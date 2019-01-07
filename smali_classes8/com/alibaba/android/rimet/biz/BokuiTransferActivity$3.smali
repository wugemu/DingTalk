.class final Lcom/alibaba/android/rimet/biz/BokuiTransferActivity$3;
.super Ljava/lang/Object;
.source "BokuiTransferActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity$3;->a:Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity$3;->a:Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/BokuiTransferActivity;->finish()V

    .line 103
    return-void
.end method
