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
import QtQuick.Controls 1.4
import QtQml.Models 2.2
import com.theqtcompany.Editor3d 1.0

Menu {
    title: qsTr("Add Entity")

    MenuItem {
        text: selectedEntityName === "" ? qsTr("Add new entity") : qsTr("Add new entity under '") + selectedEntityName + qsTr("'")
        enabled: false
    }

    MenuSeparator {}

    MenuItem {
        text: qsTr("Mesh")
        iconSource: "qrc:/images/mesh.png"
        onTriggered: {
            entityTree.addNewEntity(EditorSceneItemModel.MeshEntity)
        }
    }
    MenuItem {
        text: qsTr("Camera")
        iconSource: "qrc:/images/camera.png"
        onTriggered: {
            entityTree.addNewEntity(EditorSceneItemModel.CameraEntity)
        }
    }
    MenuItem {
        text: qsTr("Light")
        iconSource: "qrc:/images/light.png"
        onTriggered: {
            entityTree.addNewEntity(EditorSceneItemModel.LightEntity)
        }
    }
    MenuItem {
        text: qsTr("Empty")
        iconSource: "qrc:/images/cross.png"
        onTriggered: {
            entityTree.addNewEntity(EditorSceneItemModel.GenericEntity)
        }
    }
}
