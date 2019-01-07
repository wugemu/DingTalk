.class public Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;
.super Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;
.source "CircleCommentDraftEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_connection_comment_draft_data"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry",
        "<",
        "Lcom/alibaba/android/user/connection/draft/CommentDraft;",
        ">;"
    }
.end annotation


# static fields
.field public static final NAME_COMBINED_ID:Ljava/lang/String; = "combined_id"

.field public static final NAME_DRAFT_TEXT:Ljava/lang/String; = "draft_text"

.field public static final NAME_EXTRA:Ljava/lang/String; = "extra"

.field public static final NAME_EXTRA_TYPE:Ljava/lang/String; = "extra_type"

.field public static final NAME_POST_ID:Ljava/lang/String; = "post_id"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_connection_comment_draft_data"


# instance fields
.field public combinedId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "combined_id"
        sort = 0x5
    .end annotation
.end field

.field public draftText:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "draft_text"
        sort = 0x2
    .end annotation
.end field

.field public extra:[B
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "extra"
        sort = 0x4
    .end annotation
.end field

.field public extraType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "extra_type"
        sort = 0x3
    .end annotation
.end field

.field public postId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "post_id"
        sort = 0x1
        uniqueIndexName = "idx_tb_circle_comment_draft_post_id:1"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->postId:J

    .line 43
    iput-object v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->draftText:Ljava/lang/String;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->extraType:I

    .line 45
    iput-object v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->extra:[B

    .line 46
    iput-object v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->combinedId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public fillContentValues(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string/jumbo v0, "post_id"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->postId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    const-string/jumbo v0, "draft_text"

    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->draftText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string/jumbo v0, "extra_type"

    iget v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->extraType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    const-string/jumbo v0, "extra"

    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->extra:[B

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 58
    const-string/jumbo v0, "combined_id"

    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->combinedId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fillWithObject(Lcom/alibaba/android/user/connection/draft/CommentDraft;)V
    .locals 2
    .param p1, "object"    # Lcom/alibaba/android/user/connection/draft/CommentDraft;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-wide v0, p1, Lcom/alibaba/android/user/connection/draft/CommentDraft;->id:J

    iput-wide v0, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->postId:J

    .line 67
    iget-object v0, p1, Lcom/alibaba/android/user/connection/draft/CommentDraft;->draftText:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->draftText:Ljava/lang/String;

    .line 68
    iget v0, p1, Lcom/alibaba/android/user/connection/draft/CommentDraft;->extraType:I

    iput v0, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->extraType:I

    .line 69
    iget-object v0, p1, Lcom/alibaba/android/user/connection/draft/CommentDraft;->extra:[B

    iput-object v0, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->extra:[B

    .line 70
    iget-object v0, p1, Lcom/alibaba/android/user/connection/draft/CommentDraft;->combinedId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->combinedId:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic fillWithObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/alibaba/android/user/connection/draft/CommentDraft;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->fillWithObject(Lcom/alibaba/android/user/connection/draft/CommentDraft;)V

    return-void
.end method

.method public toObject()Lcom/alibaba/android/user/connection/draft/CommentDraft;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 75
    new-instance v0, Lcom/alibaba/android/user/connection/draft/CommentDraft;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/draft/CommentDraft;-><init>()V

    .line 76
    .local v0, "draft":Lcom/alibaba/android/user/connection/draft/CommentDraft;
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->postId:J

    iput-wide v2, v0, Lcom/alibaba/android/user/connection/draft/CommentDraft;->id:J

    .line 77
    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->draftText:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/draft/CommentDraft;->draftText:Ljava/lang/String;

    .line 78
    iget v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->extraType:I

    iput v1, v0, Lcom/alibaba/android/user/connection/draft/CommentDraft;->extraType:I

    .line 79
    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->extra:[B

    iput-object v1, v0, Lcom/alibaba/android/user/connection/draft/CommentDraft;->extra:[B

    .line 80
    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->combinedId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/draft/CommentDraft;->combinedId:Ljava/lang/String;

    .line 81
    return-object v0
.end method

.method public bridge synthetic toObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/entry/CircleCommentDraftEntry;->toObject()Lcom/alibaba/android/user/connection/draft/CommentDraft;

    move-result-object v0

    return-object v0
.end method
