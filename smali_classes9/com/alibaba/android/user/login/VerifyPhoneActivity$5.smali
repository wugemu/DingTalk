.class final Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;
.super Ljava/lang/Object;
.source "VerifyPhoneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/VerifyPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcfo;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Landroid/content/Context;Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .prologue
    .line 710
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->b:Lcfo;

    iput-object p4, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 713
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->a:Landroid/content/Context;

    invoke-static {v0}, Lfrb;->a(Landroid/content/Context;)Z

    move-result v10

    .line 714
    .local v10, "isSimulator":Z
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->b:Lcfo;

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->d:Ljava/lang/String;

    .line 715
    invoke-static {}, Lfxg;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v7, v7, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->l:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->a:Landroid/content/Context;

    invoke-static {v8, v10}, Lfrb;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "EVENTBUTLER"

    .line 716
    invoke-static {v9}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v11, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;

    invoke-direct {v11, p0, v10}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;Z)V

    const-class v12, Lcma;

    iget-object v13, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-interface {v9, v11, v12, v13}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcma;

    .line 714
    invoke-interface/range {v0 .. v9}, Lezm;->a(Ljava/lang/String;Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 858
    return-void
.end method
