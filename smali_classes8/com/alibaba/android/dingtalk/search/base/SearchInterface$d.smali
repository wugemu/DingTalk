.class public final Lcom/alibaba/android/dingtalk/search/base/SearchInterface$d;
.super Ljava/lang/Object;
.source "SearchInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/search/base/SearchInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput p1, p0, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$d;->a:I

    .line 272
    iput p2, p0, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$d;->b:I

    .line 273
    return-void
.end method
