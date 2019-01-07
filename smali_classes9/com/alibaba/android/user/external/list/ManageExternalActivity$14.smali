.class final Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;
.super Ljava/lang/Object;
.source "ManageExternalActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/ManageExternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/user/external/list/ManageExternalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;->d:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1106
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->b()Lfmr;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lfmr;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1107
    const-string/jumbo v1, "local contact exist"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1108
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;->d:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->p(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    .line 1135
    :goto_0
    return-void

    .line 1111
    :cond_0
    new-instance v0, Lgwt;

    invoke-direct {v0}, Lgwt;-><init>()V

    .line 1112
    .local v0, "telPhoneContactObject":Lgwt;
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;->b:Ljava/lang/String;

    iput-object v1, v0, Lgwt;->a:Ljava/lang/String;

    .line 1113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lgwt;->b:Ljava/util/List;

    .line 1114
    iget-object v1, v0, Lgwt;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;->c:Ljava/lang/String;

    iput-object v1, v0, Lgwt;->c:Ljava/lang/String;

    .line 1116
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelPhoneContactInterface;->a()Lcom/alibaba/dingtalk/telebase/TelPhoneContactInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/telebase/TelPhoneContactInterface;->a(Lgwt;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1117
    const-string/jumbo v1, "save local contact success"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1118
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;->d:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->p(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    goto :goto_0

    .line 1121
    :cond_1
    const-string/jumbo v1, "save local contact failed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1122
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14$1;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
