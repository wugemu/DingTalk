.class public Lfdu;
.super Lfds;
.source "CircleCommentDraftDataSourceImpl.java"

# interfaces
.implements Lcmj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfdu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfds",
        "<",
        "Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;",
        "Lcom/alibaba/android/user/connection/draft/CommentDraft;",
        ">;",
        "Lcmj;"
    }
.end annotation


# instance fields
.field private a:Lfq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfq",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/user/connection/draft/CommentDraft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    const-class v0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;

    invoke-direct {p0, v0}, Lfds;-><init>(Ljava/lang/Class;)V

    .line 21
    new-instance v0, Lfq;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lfq;-><init>(I)V

    iput-object v0, p0, Lfdu;->a:Lfq;

    .line 56
    return-void
.end method

.method public static f()Lfdu;
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcmk;->a()Lcmk;

    move-result-object v0

    const-class v1, Lfdu;

    invoke-virtual {v0, v1}, Lcmk;->a(Ljava/lang/Class;)Lcmj;

    move-result-object v0

    check-cast v0, Lfdu;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lfdu;->a:Lfq;

    invoke-virtual {v0}, Lfq;->evictAll()V

    .line 65
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/connection/draft/CommentDraft;)V
    .locals 4
    .param p1, "draft"    # Lcom/alibaba/android/user/connection/draft/CommentDraft;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 38
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alibaba/android/user/connection/draft/CommentDraft;->combinedId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v2, p0, Lfdu;->a:Lfq;

    iget-object v3, p1, Lcom/alibaba/android/user/connection/draft/CommentDraft;->combinedId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lfq;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {}, Lfdo;->a()Lfdo;

    move-result-object v1

    .line 43
    .local v1, "pool":Lfdo;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lfdo;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 44
    .local v0, "params":[Ljava/lang/String;
    const/4 v2, 0x0

    iget-object v3, p1, Lcom/alibaba/android/user/connection/draft/CommentDraft;->combinedId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 45
    new-instance v2, Lfdu$1;

    invoke-direct {v2, p0, v0, v1}, Lfdu$1;-><init>(Lfdu;[Ljava/lang/String;Lfdo;)V

    invoke-static {v2}, Lfdu;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/android/user/connection/draft/CommentDraft;)V
    .locals 1
    .param p1, "combinedId"    # Ljava/lang/String;
    .param p2, "draft"    # Lcom/alibaba/android/user/connection/draft/CommentDraft;

    .prologue
    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lfdu;->a:Lfq;

    invoke-virtual {v0, p1, p2}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "tb_connection_comment_draft_data"

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/alibaba/android/user/connection/draft/CommentDraft;
    .locals 1
    .param p1, "combineId"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lfdu;->a:Lfq;

    invoke-virtual {v0, p1}, Lfq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/draft/CommentDraft;

    goto :goto_0
.end method

.method protected final synthetic d()Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;
    .locals 1

    .prologue
    .line 1074
    new-instance v0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;-><init>()V

    .line 18
    return-object v0
.end method
