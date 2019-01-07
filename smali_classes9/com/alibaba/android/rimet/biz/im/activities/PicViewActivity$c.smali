.class abstract Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$c;
.super Ljava/lang/Object;
.source "PicViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation


# instance fields
.field protected a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$b;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$b;Landroid/app/Activity;)V
    .locals 2
    .param p1, "runnable"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$b;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1244
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1245
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$b;

    invoke-interface {v0, p1, v1, p2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$b;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$c;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$b;

    .line 1247
    :cond_0
    return-void
.end method
