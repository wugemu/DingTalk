.class final Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1$3;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 155
    sget-object v0, Lhcp;->g:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;->ALBUM:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 156
    return-object p1
.end method
