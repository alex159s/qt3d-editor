/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the Qt3D Editor of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:GPL-EXCEPT$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 as published by the Free Software
** Foundation with exceptions as appearing in the file LICENSE.GPL3-EXCEPT
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/
#ifndef REPLACECOMPONENTCOMMAND_H
#define REPLACECOMPONENTCOMMAND_H

#include "editorsceneitemcomponentsmodel.h"

#include <QtWidgets/QUndoCommand>

class EditorSceneItemModel;

namespace Qt3DCore {
    class QComponent;
}

class ReplaceComponentCommand : public QUndoCommand
{
public:
    ReplaceComponentCommand(EditorSceneItemModel *sceneModel,
                            const QString &entityName,
                            EditorSceneItemComponentsModel::EditorSceneItemComponentTypes componentType,
                            Qt3DCore::QComponent *newComponent, Qt3DCore::QComponent *oldComponent);
    virtual ~ReplaceComponentCommand();

    virtual void undo();
    virtual void redo();

private:
    void replaceAndSwap();

    EditorSceneItemModel *m_sceneModel;
    QString m_entityName;
    EditorSceneItemComponentsModel::EditorSceneItemComponentTypes m_componentType;
    Qt3DCore::QComponent *m_component1;
    Qt3DCore::QComponent *m_component2;
};

#endif // REPLACECOMPONENTCOMMAND_H
