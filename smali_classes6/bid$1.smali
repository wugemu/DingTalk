.class final Lbid$1;
.super Ljava/lang/Object;
.source "CommentNormalHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/CommentObject;

.field final synthetic b:Lbid;


# direct methods
.method constructor <init>(Lbid;Lcom/alibaba/android/ding/base/objects/CommentObject;)V
    .locals 0
    .param p1, "this$0"    # Lbid;

    .prologue
    .line 157
    iput-object p1, p0, Lbid$1;->b:Lbid;

    iput-object p2, p0, Lbid$1;->a:Lcom/alibaba/android/ding/base/objects/CommentObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 160
    iget-object v0, p0, Lbid$1;->b:Lbid;

    .line 1047
    iget-object v0, v0, Lbid;->b:Landroid/app/Activity;

    .line 160
    iget-object v1, p0, Lbid$1;->a:Lcom/alibaba/android/ding/base/objects/CommentObject;

    iget-wide v2, v1, Lcom/alibaba/android/ding/base/objects/CommentObject;->c:J

    invoke-static {v0, v2, v3}, Lbjv;->a(Landroid/app/Activity;J)V

    .line 161
    return-void
.end method
