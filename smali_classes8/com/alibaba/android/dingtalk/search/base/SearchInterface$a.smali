.class public final Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;
.super Ljava/lang/Object;
.source "SearchInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/search/base/SearchInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/search/base/SearchInterface$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/search/base/SearchInterface$d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p2, "searchSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/search/base/SearchInterface$d;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;->a:Ljava/lang/CharSequence;

    .line 281
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;->b:Ljava/util/List;

    .line 282
    return-void
.end method
