.class public abstract Lcm;
.super Lck;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lck;"
    }
.end annotation


# instance fields
.field public final b:Landroid/app/Activity;

.field public final c:Landroid/content/Context;

.field public final d:Landroid/os/Handler;

.field final e:I

.field public final f:Lco;

.field public g:Lfw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfw",
            "<",
            "Ljava/lang/String;",
            "Lcv;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Lcw;

.field public j:Z

.field public k:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "windowAnimations"    # I

    .prologue
    .line 67
    .local p0, "this":Lcm;, "Lcm<TE;>;"
    invoke-direct {p0}, Lck;-><init>()V

    .line 46
    new-instance v0, Lco;

    invoke-direct {v0}, Lco;-><init>()V

    iput-object v0, p0, Lcm;->f:Lco;

    .line 68
    iput-object p1, p0, Lcm;->b:Landroid/app/Activity;

    .line 69
    iput-object p2, p0, Lcm;->c:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lcm;->d:Landroid/os/Handler;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcm;->e:I

    .line 72
    return-void
.end method

.method protected constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 63
    .local p0, "this":Lcm;, "Lcm<TE;>;"
    iget-object v0, p1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Lcm;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 64
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lcm;, "Lcm<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/String;ZZ)Lcw;
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "started"    # Z
    .param p3, "create"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 304
    .local p0, "this":Lcm;, "Lcm<TE;>;"
    iget-object v1, p0, Lcm;->g:Lfw;

    if-nez v1, :cond_0

    .line 305
    new-instance v1, Lfw;

    invoke-direct {v1}, Lfw;-><init>()V

    iput-object v1, p0, Lcm;->g:Lfw;

    .line 307
    :cond_0
    iget-object v1, p0, Lcm;->g:Lfw;

    invoke-virtual {v1, p1}, Lfw;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcw;

    .line 308
    .local v0, "lm":Lcw;
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 309
    new-instance v0, Lcw;

    .end local v0    # "lm":Lcw;
    invoke-direct {v0, p1, p0, p2}, Lcw;-><init>(Ljava/lang/String;Lcm;Z)V

    .line 310
    .restart local v0    # "lm":Lcw;
    iget-object v1, p0, Lcm;->g:Lfw;

    invoke-virtual {v1, p1, v0}, Lfw;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_1
    :goto_0
    return-object v0

    .line 311
    :cond_2
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcw;->e:Z

    if-nez v1, :cond_1

    .line 312
    invoke-virtual {v0}, Lcw;->b()V

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 230
    .local p0, "this":Lcm;, "Lcm<TE;>;"
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 130
    .local p0, "this":Lcm;, "Lcm<TE;>;"
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget-object v0, p0, Lcm;->c:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 144
    .local p0, "this":Lcm;, "Lcm<TE;>;"
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcm;->b:Landroid/app/Activity;

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcd;->a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 150
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I

    .prologue
    .line 158
    .local p0, "this":Lcm;, "Lcm<TE;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 84
    .local p0, "this":Lcm;, "Lcm<TE;>;"
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lcm;, "Lcm<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 165
    .local p0, "this":Lcm;, "Lcm<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 220
    .local p0, "this":Lcm;, "Lcm<TE;>;"
    iget-object v1, p0, Lcm;->g:Lfw;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcm;->g:Lfw;

    invoke-virtual {v1, p1}, Lfw;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcw;

    .line 222
    .local v0, "lm":Lcw;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcw;->f:Z

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {v0}, Lcw;->g()V

    .line 224
    iget-object v1, p0, Lcm;->g:Lfw;

    invoke-virtual {v1, p1}, Lfw;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .end local v0    # "lm":Lcw;
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lcm;, "Lcm<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public c()Landroid/view/LayoutInflater;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 98
    .local p0, "this":Lcm;, "Lcm<TE;>;"
    iget-object v0, p0, Lcm;->c:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 114
    .local p0, "this":Lcm;, "Lcm<TE;>;"
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 172
    .local p0, "this":Lcm;, "Lcm<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 179
    .local p0, "this":Lcm;, "Lcm<TE;>;"
    iget v0, p0, Lcm;->e:I

    return v0
.end method

.method public abstract g()Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method
