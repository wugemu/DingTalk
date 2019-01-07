.class public final Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$a;
.super Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;
.source "Shimmer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b",
        "<",
        "Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;-><init>()V

    .line 407
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$a;->a:Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer;->q:Z

    .line 408
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Lcom/alibaba/android/dingtalkbase/shimmer/Shimmer$b;
    .locals 0

    .prologue
    .line 405
    return-object p0
.end method
