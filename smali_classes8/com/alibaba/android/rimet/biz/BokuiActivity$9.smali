.class final Lcom/alibaba/android/rimet/biz/BokuiActivity$9;
.super Ljava/lang/Object;
.source "BokuiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/BokuiActivity;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/BokuiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/BokuiActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/BokuiActivity;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$9;->a:Lcom/alibaba/android/rimet/biz/BokuiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$9;->a:Lcom/alibaba/android/rimet/biz/BokuiActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->finish()V

    .line 292
    return-void
.end method
