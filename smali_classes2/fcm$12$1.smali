.class final Lfcm$12$1;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfcm$12;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

.field final synthetic b:Lfcm$12;


# direct methods
.method constructor <init>(Lfcm$12;Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;)V
    .locals 0
    .param p1, "this$1"    # Lfcm$12;

    .prologue
    .line 1169
    iput-object p1, p0, Lfcm$12$1;->b:Lfcm$12;

    iput-object p2, p0, Lfcm$12$1;->a:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1173
    iget-object v0, p0, Lfcm$12$1;->b:Lfcm$12;

    iget-object v0, v0, Lfcm$12;->b:Lfcm;

    iget-object v1, p0, Lfcm$12$1;->a:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    iget-wide v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->commentId:J

    iget-object v1, p0, Lfcm$12$1;->b:Lfcm$12;

    iget-object v1, v1, Lfcm$12;->b:Lfcm;

    invoke-static {v1}, Lfcm;->b(Lfcm;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v1

    iget-wide v4, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-static {v0, v2, v3, v4, v5}, Lfcm;->a(Lfcm;JJ)V

    .line 1174
    return-void
.end method
