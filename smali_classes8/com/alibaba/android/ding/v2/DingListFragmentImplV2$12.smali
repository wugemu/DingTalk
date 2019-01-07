.class final Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$12;
.super Ljava/lang/Object;
.source "DingListFragmentImplV2.java"

# interfaces
.implements Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$12;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$12;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->b(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    .line 180
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 184
    return-void
.end method
