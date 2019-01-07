.class public final Lgoj$a;
.super Ljava/lang/Object;
.source "CSpaceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgoj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 670
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lgoj$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 750
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    const/4 v0, 0x0

    .line 753
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lgoj$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "spaceId"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 743
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    :cond_0
    const/4 v0, 0x0

    .line 746
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ltl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltl;
    .locals 6
    .param p0, "loadMoreResult"    # Ltl;
    .param p1, "loadMoreId"    # Ljava/lang/String;
    .param p2, "oldLoadMoreId"    # Ljava/lang/String;
    .param p3, "spaceId"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 675
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_cspace_list_dentry_retry"

    .line 1083
    invoke-virtual {v2, v3, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 675
    if-nez v2, :cond_1

    .line 712
    .end local p0    # "loadMoreResult":Ltl;
    :cond_0
    :goto_0
    return-object p0

    .line 679
    .restart local p0    # "loadMoreResult":Ltl;
    :cond_1
    if-nez p0, :cond_2

    .line 680
    const/4 p0, 0x0

    goto :goto_0

    .line 2051
    :cond_2
    iput-object p1, p0, Ltl;->b:Ljava/lang/String;

    .line 685
    invoke-static {p3, p4}, Lgoj$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 691
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2059
    :cond_3
    iput-boolean v4, p0, Ltl;->c:Z

    .line 693
    invoke-static {v0}, Lgoj$a;->b(Ljava/lang/String;)Ljava/lang/Integer;

    goto :goto_0

    .line 3031
    :cond_4
    iget-object v2, p0, Ltl;->d:Ljava/util/List;

    .line 697
    if-eqz v2, :cond_5

    .line 4031
    iget-object v2, p0, Ltl;->d:Ljava/util/List;

    .line 697
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 4059
    iput-boolean v5, p0, Ltl;->c:Z

    .line 699
    invoke-static {v0}, Lgoj$a;->b(Ljava/lang/String;)Ljava/lang/Integer;

    goto :goto_0

    .line 703
    :cond_5
    invoke-static {v0}, Lgoj$a;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 5033
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 704
    .local v1, "retryCount":I
    const/4 v2, 0x5

    if-lt v1, v2, :cond_6

    .line 5059
    iput-boolean v4, p0, Ltl;->c:Z

    .line 706
    invoke-static {v0}, Lgoj$a;->b(Ljava/lang/String;)Ljava/lang/Integer;

    goto :goto_0

    .line 6059
    :cond_6
    iput-boolean v5, p0, Ltl;->c:Z

    .line 711
    add-int/lit8 v2, v1, 0x1

    .line 6757
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6760
    sget-object v3, Lgoj$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Ltl;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "loadMoreResult"    # Ltl;
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 716
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_cspace_list_dentry_retry"

    .line 7083
    invoke-virtual {v4, v5, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 716
    if-nez v4, :cond_1

    .line 739
    :cond_0
    :goto_0
    return v2

    .line 720
    :cond_1
    if-eqz p0, :cond_0

    .line 8055
    iget-boolean v4, p0, Ltl;->c:Z

    .line 724
    if-eqz v4, :cond_0

    .line 9031
    iget-object v4, p0, Ltl;->d:Ljava/util/List;

    .line 728
    if-eqz v4, :cond_2

    .line 10031
    iget-object v4, p0, Ltl;->d:Ljava/util/List;

    .line 728
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 732
    :cond_2
    invoke-static {p1, p2}, Lgoj$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lgoj$a;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 10033
    invoke-static {v4, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 734
    .local v1, "retryCount":I
    const/4 v4, 0x5

    if-lt v1, v4, :cond_3

    .line 735
    invoke-static {v0}, Lgoj$a;->b(Ljava/lang/String;)Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    move v2, v3

    .line 739
    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 764
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    const/4 v0, 0x0

    .line 767
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lgoj$a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method
