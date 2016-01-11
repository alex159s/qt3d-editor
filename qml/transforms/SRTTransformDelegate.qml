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
import QtQuick 2.5
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.2
import com.theqtcompany.Editor3d 1.0
import Qt3D.Core 2.0

TransformDelegate {
    id: thisDelegate
    componentType: EditorSceneItemComponentsModel.Transform
    title: qsTr("Scale, Rotate & Translate")
    editable: false

    Vector3DPropertyInputField {
        label: qsTr("Scale")
        propertyName: "scale3D"
        component: transformComponentData
        componentType: thisDelegate.componentType
    }

    RotationPropertyInputField {
        propertyName: "rotation"
        component: transformComponentData
        componentType: thisDelegate.componentType
        stepSize: 1
        minimum: 0
        maximum: 359
    }

    Vector3DPropertyInputField {
        label: qsTr("Translate")
        propertyName: "translation"
        component: transformComponentData
        componentType: thisDelegate.componentType
    }

}
