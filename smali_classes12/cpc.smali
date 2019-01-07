.class public final Lcpc;
.super Ljava/lang/Object;
.source "ListViewScrollUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/AbsListView;)V
    .locals 6
    .param p0, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 57
    if-nez p0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/4 v2, 0x0

    .line 63
    .local v2, "flingEndField":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v3, Landroid/widget/AbsListView;

    const-string/jumbo v4, "mFlingRunnable"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 64
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 65
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "endFling"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 66
    .local v1, "endFling":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    :goto_1
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 75
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "endFling":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v3

    const/4 v1, 0x0

    .line 72
    .restart local v1    # "endFling":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 69
    .end local v1    # "endFling":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Error;
    const/4 v1, 0x0

    .line 71
    .restart local v1    # "endFling":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "position"    # I

    .prologue
    .line 17
    if-eqz p0, :cond_0

    if-gez p1, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    .line 21
    new-instance v0, Lcpc$1;

    invoke-direct {v0, p0, p1}, Lcpc$1;-><init>(Landroid/widget/AbsListView;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static b(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "position"    # I

    .prologue
    .line 37
    if-eqz p0, :cond_0

    if-gez p1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 41
    new-instance v0, Lcpc$2;

    invoke-direct {v0, p0, p1}, Lcpc$2;-><init>(Landroid/widget/AbsListView;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
