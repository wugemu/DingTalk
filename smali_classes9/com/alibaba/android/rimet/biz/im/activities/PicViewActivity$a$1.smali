.class final Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a$1;
.super Ljava/lang/Object;
.source "PicViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$b;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a$1;->b:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$a$1;->a:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$b;->a([Ljava/lang/Object;)V

    .line 1229
    :cond_0
    return-void
.end method
