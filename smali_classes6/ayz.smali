.class public final Layz;
.super Lcom/alibaba/android/ding/base/objects/CommentContent;
.source "CommentText.java"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/android/ding/base/objects/CommentContent;-><init>()V

    .line 14
    sget-object v0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Text:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    iput-object v0, p0, Layz;->f:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    .line 15
    return-void
.end method

.method public constructor <init>(Lazh;)V
    .locals 1
    .param p1, "model"    # Lazh;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/base/objects/CommentContent;-><init>(Lazh;)V

    .line 19
    if-eqz p1, :cond_0

    iget-object v0, p1, Lazh;->b:Lazs;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p1, Lazh;->b:Lazs;

    iget-object v0, v0, Lazs;->a:Ljava/lang/String;

    iput-object v0, p0, Layz;->a:Ljava/lang/String;

    .line 22
    :cond_0
    return-void
.end method
