.class public Lcom/alibaba/android/user/label/LabelExtensionObject;
.super Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
.source "LabelExtensionObject.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private mIsChecked:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;)V
    .locals 2
    .param p1, "labelObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;-><init>()V

    .line 30
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->id:J

    iput-wide v0, p0, Lcom/alibaba/android/user/label/LabelExtensionObject;->id:J

    .line 31
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/label/LabelExtensionObject;->name:Ljava/lang/String;

    .line 32
    iget v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->color:I

    iput v0, p0, Lcom/alibaba/android/user/label/LabelExtensionObject;->color:I

    .line 33
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/alibaba/android/user/label/LabelExtensionObject;->mIsChecked:Z

    return v0
.end method

.method public setIsChecked(Z)V
    .locals 0
    .param p1, "isChecked"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/alibaba/android/user/label/LabelExtensionObject;->mIsChecked:Z

    .line 43
    return-void
.end method
