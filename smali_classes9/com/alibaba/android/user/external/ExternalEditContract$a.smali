.class public final Lcom/alibaba/android/user/external/ExternalEditContract$a;
.super Ljava/lang/Object;
.source "ExternalEditContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/ExternalEditContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 1
    .param p1, "orgEmployeeExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/ExternalEditContract$a;->b:Z

    .line 66
    iput-object p1, p0, Lcom/alibaba/android/user/external/ExternalEditContract$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 67
    return-void
.end method
