.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$8;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Landroid/app/Activity;JLjava/lang/String;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field final synthetic b:Lcma;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:J

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;Lcma;Landroid/app/Activity;JLjava/lang/String;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 4997
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$8;->g:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iput-object p3, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$8;->b:Lcma;

    iput-object p4, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$8;->c:Landroid/app/Activity;

    iput-wide p5, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$8;->d:J

    iput-object p7, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$8;->e:Ljava/lang/String;

    iput p8, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$8;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4997
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 6000
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 6002
    if-nez p1, :cond_0

    .line 6003
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$8;->b:Lcma;

    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lezg$l;->dt_user_common_error_data_fetch_failed:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 6004
    :goto_0
    return-void

    .line 6007
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$8;->c:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$8;->d:J

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    iget v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$8;->e:Ljava/lang/String;

    iget v8, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$8;->f:I

    invoke-static/range {v1 .. v8}, Lflz;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 6009
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$8;->b:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 5019
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 5021
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$8;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5022
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 5015
    return-void
.end method
