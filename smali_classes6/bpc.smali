.class public final Lbpc;
.super Lbpa;
.source "CircleCommentDraftDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbpc$b;,
        Lbpc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbpa",
        "<",
        "Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentDraftEntry;",
        "Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lfq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfq",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    const-class v0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentDraftEntry;

    invoke-direct {p0, v0}, Lbpa;-><init>(Ljava/lang/Class;)V

    .line 17
    new-instance v0, Lfq;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lfq;-><init>(I)V

    iput-object v0, p0, Lbpc;->a:Lfq;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lbpc;-><init>()V

    return-void
.end method

.method public static e()Lbpc;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lbpc$a;->a()Lbpc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "tb_circle_comment_draft_data"

    return-object v0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;)V
    .locals 4
    .param p1, "draft"    # Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 30
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->combinedId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v2, p0, Lbpc;->a:Lfq;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->combinedId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lfq;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {}, Lbox;->a()Lbox;

    move-result-object v1

    .line 35
    .local v1, "pool":Lbox;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lbox;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 36
    .local v0, "params":[Ljava/lang/String;
    const/4 v2, 0x0

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->combinedId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 37
    new-instance v2, Lbpc$1;

    invoke-direct {v2, p0, v0, v1}, Lbpc$1;-><init>(Lbpc;[Ljava/lang/String;Lbox;)V

    invoke-static {v2}, Lbpc;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;)V
    .locals 1
    .param p1, "combinedId"    # Ljava/lang/String;
    .param p2, "draft"    # Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

    .prologue
    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 22
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lbpc;->a:Lfq;

    invoke-virtual {v0, p1, p2}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final synthetic b()Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;
    .locals 1

    .prologue
    .line 1065
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentDraftEntry;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentDraftEntry;-><init>()V

    .line 14
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;
    .locals 1
    .param p1, "combineId"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbpc;->a:Lfq;

    invoke-virtual {v0, p1}, Lfq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

    goto :goto_0
.end method
