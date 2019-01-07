.class final Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;
.super Ljava/lang/Object;
.source "NoPwdLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/NoPwdLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lezm;

.field final synthetic b:Lcfo;

.field final synthetic c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Lezm;Lcfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->a:Lezm;

    iput-object p3, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->b:Lcfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 194
    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->a:Lezm;

    iget-object v2, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->b:Lcfo;

    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->e(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->f(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lfxg;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->g(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)J

    move-result-wide v6

    const-string/jumbo v8, ""

    const-string/jumbo v0, "EVENTBUTLER"

    .line 195
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v9, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;

    invoke-direct {v9, p0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;-><init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;)V

    const-class v10, Lcma;

    iget-object v11, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-interface {v0, v9, v10, v11}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcma;

    .line 194
    invoke-interface/range {v1 .. v9}, Lezm;->a(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcma;)V

    .line 237
    return-void
.end method
