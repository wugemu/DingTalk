.class public Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;
.super Ljava/lang/Object;
.source "ExternalEditContract.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/ExternalEditContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactFieldsObjectData"
.end annotation


# instance fields
.field public customFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/OrgExtFieldObject;",
            ">;"
        }
    .end annotation
.end field

.field public defaultFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/OrgExtFieldObject;",
            ">;"
        }
    .end annotation
.end field

.field public showInviteChannel:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
