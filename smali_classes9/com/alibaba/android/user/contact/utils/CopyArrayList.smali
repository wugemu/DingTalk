.class public Lcom/alibaba/android/user/contact/utils/CopyArrayList;
.super Ljava/util/ArrayList;
.source "CopyArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    .local p0, "this":Lcom/alibaba/android/user/contact/utils/CopyArrayList;, "Lcom/alibaba/android/user/contact/utils/CopyArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/alibaba/android/user/contact/utils/CopyArrayList;, "Lcom/alibaba/android/user/contact/utils/CopyArrayList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    return-void
.end method


# virtual methods
.method public removeRange(II)V
    .locals 0
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 46
    .local p0, "this":Lcom/alibaba/android/user/contact/utils/CopyArrayList;, "Lcom/alibaba/android/user/contact/utils/CopyArrayList<TE;>;"
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    .line 47
    return-void
.end method
