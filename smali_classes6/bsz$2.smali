.class final Lbsz$2;
.super Ljava/lang/Object;
.source "LanBindPresenter.java"

# interfaces
.implements Lblv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsz;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblv",
        "<",
        "Lbms;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbsz;


# direct methods
.method constructor <init>(Lbsz;)V
    .locals 0
    .param p1, "this$0"    # Lbsz;

    .prologue
    .line 184
    iput-object p1, p0, Lbsz$2;->a:Lbsz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x6

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x5

    .line 184
    check-cast p1, Lbms;

    .line 1187
    iget-object v0, p0, Lbsz$2;->a:Lbsz;

    invoke-virtual {v0}, Lbsz;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1190
    const-string/jumbo v0, "LanBindPresenter"

    new-array v3, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "manualMesh result = "

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    if-eqz p1, :cond_1

    .line 1192
    iget-object v0, p1, Lbms;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbms;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 1193
    iget-object v0, p0, Lbsz$2;->a:Lbsz;

    iget-object v0, v0, Lbsz;->b:Lbsw$b;

    iget-object v3, p0, Lbsz$2;->a:Lbsz;

    iget-object v3, v3, Lbsz;->b:Lbsw$b;

    invoke-interface {v3}, Lbsw$b;->w()I

    move-result v3

    iget-object v4, p1, Lbms;->b:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v0, v3}, Lbsw$b;->d(I)V

    .line 1195
    :cond_0
    iget-object v0, p1, Lbms;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lbms;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1196
    :goto_0
    iget-object v3, p0, Lbsz$2;->a:Lbsz;

    .line 2044
    iget-boolean v3, v3, Lbsz;->e:Z

    .line 1196
    if-nez v3, :cond_3

    if-ne v0, v1, :cond_3

    .line 1197
    iget-object v0, p0, Lbsz$2;->a:Lbsz;

    .line 3044
    iput-boolean v6, v0, Lbsz;->e:Z

    .line 1198
    iget-object v0, p0, Lbsz$2;->a:Lbsz;

    iget-object v0, v0, Lbsz;->b:Lbsw$b;

    invoke-interface {v0, v7}, Lbsw$b;->e(I)V

    .line 1199
    iget-object v0, p0, Lbsz$2;->a:Lbsz;

    invoke-virtual {v0}, Lbsz;->w()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 1195
    goto :goto_0

    .line 1200
    :cond_3
    if-ne v0, v2, :cond_1

    .line 1201
    iget-object v0, p0, Lbsz$2;->a:Lbsz;

    iget-object v0, v0, Lbsz;->b:Lbsw$b;

    invoke-interface {v0, v2}, Lbsw$b;->e(I)V

    .line 1202
    iget-object v0, p0, Lbsz$2;->a:Lbsz;

    invoke-virtual {v0}, Lbsz;->w()V

    goto :goto_1
.end method
