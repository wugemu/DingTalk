.class public final Lbhj$1;
.super Ljava/lang/Object;
.source "DingPegDraftManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbhj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lbhj;


# direct methods
.method public constructor <init>(Lbhj;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lbhj;

    .prologue
    .line 98
    iput-object p1, p0, Lbhj$1;->b:Lbhj;

    iput-object p2, p0, Lbhj$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 101
    const/4 v2, 0x0

    .line 102
    .local v2, "ret":Ljava/lang/String;
    iget-object v3, p0, Lbhj$1;->b:Lbhj;

    invoke-static {v3}, Lbhj;->a(Lbhj;)Lbhj$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, p0, Lbhj$1;->b:Lbhj;

    invoke-static {v3}, Lbhj;->a(Lbhj;)Lbhj$a;

    move-result-object v3

    iget-object v2, v3, Lbhj$a;->a:Ljava/lang/String;

    .line 111
    :goto_0
    move-object v1, v2

    .line 112
    .local v1, "pegDraft":Ljava/lang/String;
    iget-object v3, p0, Lbhj$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v3, v1}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 113
    return-void

    .line 105
    .end local v1    # "pegDraft":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lbhj$1;->b:Lbhj;

    invoke-static {v3}, Lbhj;->b(Lbhj;)Lbhb;

    move-result-object v3

    invoke-interface {v3}, Lbhb;->a()Lcom/alibaba/android/ding/db/entry/EntryPegDraft;

    move-result-object v0

    .line 106
    .local v0, "entryPegDraft":Lcom/alibaba/android/ding/db/entry/EntryPegDraft;
    if-eqz v0, :cond_1

    .line 107
    iget-object v2, v0, Lcom/alibaba/android/ding/db/entry/EntryPegDraft;->pegDraft:Ljava/lang/String;

    .line 109
    :cond_1
    iget-object v3, p0, Lbhj$1;->b:Lbhj;

    invoke-static {v3}, Lbhj;->b(Lbhj;)Lbhb;

    move-result-object v3

    invoke-interface {v3}, Lbhb;->b()V

    goto :goto_0
.end method
