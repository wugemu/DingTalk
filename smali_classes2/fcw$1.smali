.class final Lfcw$1;
.super Ljava/lang/Object;
.source "VideoViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfcw;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lfcw;


# direct methods
.method constructor <init>(Lfcw;Ljava/lang/String;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfcw;

    .prologue
    .line 96
    iput-object p1, p0, Lfcw$1;->d:Lfcw;

    iput-object p2, p0, Lfcw$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lfcw$1;->b:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iput-object p4, p0, Lfcw$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    sget v1, Lezg$h;->circle_item_url:I

    iget-object v2, p0, Lfcw$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 106
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lfcw$1;->a:Ljava/lang/String;

    iget-object v4, p0, Lfcw$1;->b:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iget-wide v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->fileSize:J

    iget-object v6, p0, Lfcw$1;->c:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method
