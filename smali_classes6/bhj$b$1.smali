.class final Lbhj$b$1;
.super Ljava/lang/Object;
.source "DingPegDraftManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhj$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbhj$b;


# direct methods
.method constructor <init>(Lbhj$b;)V
    .locals 0
    .param p1, "this$1"    # Lbhj$b;

    .prologue
    .line 125
    iput-object p1, p0, Lbhj$b$1;->a:Lbhj$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 128
    iget-object v1, p0, Lbhj$b$1;->a:Lbhj$b;

    iget-object v1, v1, Lbhj$b;->a:Lbhj;

    invoke-static {v1}, Lbhj;->a(Lbhj;)Lbhj$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbhj$b$1;->a:Lbhj$b;

    iget-object v1, v1, Lbhj$b;->a:Lbhj;

    invoke-static {v1}, Lbhj;->a(Lbhj;)Lbhj$a;

    move-result-object v1

    iget-object v1, v1, Lbhj$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    :cond_0
    iget-object v1, p0, Lbhj$b$1;->a:Lbhj$b;

    iget-object v1, v1, Lbhj$b;->a:Lbhj;

    invoke-static {v1}, Lbhj;->b(Lbhj;)Lbhb;

    move-result-object v1

    invoke-interface {v1}, Lbhb;->b()V

    .line 135
    :goto_0
    return-void

    .line 131
    :cond_1
    new-instance v0, Lcom/alibaba/android/ding/db/entry/EntryPegDraft;

    invoke-direct {v0}, Lcom/alibaba/android/ding/db/entry/EntryPegDraft;-><init>()V

    .line 132
    .local v0, "entryPegDraft":Lcom/alibaba/android/ding/db/entry/EntryPegDraft;
    iget-object v1, p0, Lbhj$b$1;->a:Lbhj$b;

    iget-object v1, v1, Lbhj$b;->a:Lbhj;

    invoke-static {v1}, Lbhj;->a(Lbhj;)Lbhj$a;

    move-result-object v1

    iget-object v1, v1, Lbhj$a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/db/entry/EntryPegDraft;->pegDraft:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lbhj$b$1;->a:Lbhj$b;

    iget-object v1, v1, Lbhj$b;->a:Lbhj;

    invoke-static {v1}, Lbhj;->b(Lbhj;)Lbhb;

    move-result-object v1

    invoke-interface {v1, v0}, Lbhb;->a(Lcom/alibaba/android/ding/db/entry/EntryPegDraft;)Z

    goto :goto_0
.end method
