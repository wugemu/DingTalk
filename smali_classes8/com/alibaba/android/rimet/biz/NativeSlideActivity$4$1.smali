.class final Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4$1;
.super Ljava/lang/Object;
.source "NativeSlideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4$1;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4$1;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$4;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->b(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)V

    .line 189
    return-void
.end method
