.class public final Larn$5;
.super Ljava/lang/Object;
.source "TooLong2Manager.java"

# interfaces
.implements Lapv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lapv",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Larn;


# direct methods
.method public constructor <init>(Larn;)V
    .locals 0
    .param p1, "this$0"    # Larn;

    .prologue
    .line 100
    iput-object p1, p0, Larn$5;->a:Larn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 100
    check-cast p1, Ljava/util/List;

    .line 1104
    if-eqz p1, :cond_0

    .line 1105
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager] fetchCalendarAfterTl2 \u5378\u8f7d\u5b89\u88c5tooLongTo\u548c\u975e\u5378\u8f7d\u5b89\u88c5tooLongTo folderIdList="

    aput-object v1, v0, v3

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1108
    :cond_0
    invoke-static {}, Lark;->a()Lark;

    move-result-object v1

    .line 2075
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2076
    :cond_1
    return-void

    .line 2078
    :cond_2
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "[FolderExtraManager]setHasGap, folderIds:"

    aput-object v2, v0, v3

    .line 2079
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const-string/jumbo v2, ", hasGap:"

    aput-object v2, v0, v5

    const/4 v2, 0x3

    const-string/jumbo v3, "true"

    aput-object v3, v0, v2

    .line 2078
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 2081
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2082
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2085
    invoke-virtual {v1, v0, v4}, Lark;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
