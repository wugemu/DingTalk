.class final Lgfb$1;
.super Ljava/lang/Object;
.source "SpaceMainPagePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfb;->a()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgfb;


# direct methods
.method constructor <init>(Lgfb;)V
    .locals 0
    .param p1, "this$0"    # Lgfb;

    .prologue
    .line 47
    iput-object p1, p0, Lgfb$1;->a:Lgfb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 47
    check-cast p1, Ljava/lang/Boolean;

    .line 1050
    const-string/jumbo v0, "pref_key_team_album_show_guide"

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2022
    invoke-static {p1, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1052
    if-nez v0, :cond_0

    .line 1053
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceMainPagePresenter"

    const-string/jumbo v2, "SpaceMainPagePresenter isShowTeamAlbumGuide return false"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    :goto_0
    return-void

    .line 1058
    :cond_0
    iget-object v0, p0, Lgfb$1;->a:Lgfb;

    .line 2024
    iget-object v0, v0, Lgfb;->b:Lgfa$b;

    .line 1058
    invoke-interface {v0}, Lgfa$b;->v()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 69
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceMainPagePresenter"

    const-string/jumbo v2, "isShowTeamAlbumGuide"

    const/4 v3, 0x0

    .line 70
    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 64
    return-void
.end method
