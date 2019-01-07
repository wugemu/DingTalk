.class public Landroid/support/v4/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentTabHost$SavedState;,
        Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;,
        Landroid/support/v4/app/FragmentTabHost$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentTabHost$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Landroid/widget/TabHost$OnTabChangeListener;

.field private d:Landroid/support/v4/app/FragmentTabHost$a;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1, v1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    .line 136
    invoke-direct {p0, p1, v1}, Landroid/support/v4/app/FragmentTabHost;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentTabHost;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 334
    .line 1364
    const/4 v1, 0x0

    iget-object v3, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_5

    .line 1365
    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentTabHost$a;

    .line 1366
    iget-object v5, v1, Landroid/support/v4/app/FragmentTabHost$a;->a:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, v1

    .line 335
    .local v0, "newTab":Landroid/support/v4/app/FragmentTabHost$a;
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->d:Landroid/support/v4/app/FragmentTabHost$a;

    if-eq v1, v0, :cond_3

    .line 336
    if-nez p2, :cond_0

    .line 337
    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    .line 340
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->d:Landroid/support/v4/app/FragmentTabHost$a;

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->d:Landroid/support/v4/app/FragmentTabHost$a;

    iget-object v1, v1, Landroid/support/v4/app/FragmentTabHost$a;->d:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->d:Landroid/support/v4/app/FragmentTabHost$a;

    iget-object v1, v1, Landroid/support/v4/app/FragmentTabHost$a;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v1}, Landroid/support/v4/app/FragmentTransaction;->d(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 346
    :cond_1
    if-eqz v0, :cond_2

    .line 347
    iget-object v1, v0, Landroid/support/v4/app/FragmentTabHost$a;->d:Landroid/support/v4/app/Fragment;

    if-nez v1, :cond_6

    .line 348
    iget-object v1, v0, Landroid/support/v4/app/FragmentTabHost$a;->b:Ljava/lang/Class;

    .line 349
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Landroid/support/v4/app/FragmentTabHost$a;->c:Landroid/os/Bundle;

    .line 348
    invoke-static {v2, v1, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/app/FragmentTabHost$a;->d:Landroid/support/v4/app/Fragment;

    .line 350
    iget v1, p0, Landroid/support/v4/app/FragmentTabHost;->b:I

    iget-object v2, v0, Landroid/support/v4/app/FragmentTabHost$a;->d:Landroid/support/v4/app/Fragment;

    iget-object v3, v0, Landroid/support/v4/app/FragmentTabHost$a;->a:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 356
    :cond_2
    :goto_2
    iput-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->d:Landroid/support/v4/app/FragmentTabHost$a;

    .line 359
    :cond_3
    return-object p2

    .line 1364
    .end local v0    # "newTab":Landroid/support/v4/app/FragmentTabHost$a;
    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_5
    move-object v0, v2

    .line 1370
    goto :goto_1

    .line 352
    .restart local v0    # "newTab":Landroid/support/v4/app/FragmentTabHost$a;
    :cond_6
    iget-object v1, v0, Landroid/support/v4/app/FragmentTabHost$a;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v1}, Landroid/support/v4/app/FragmentTransaction;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_2
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 145
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100f3

    aput v2, v1, v3

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 147
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/app/FragmentTabHost;->b:I

    .line 148
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 151
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 256
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 258
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "currentTag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 263
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v5, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 264
    iget-object v5, p0, Landroid/support/v4/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/FragmentTabHost$a;

    .line 265
    .local v4, "tab":Landroid/support/v4/app/FragmentTabHost$a;
    iget-object v5, v4, Landroid/support/v4/app/FragmentTabHost$a;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v4/app/FragmentTabHost$a;->d:Landroid/support/v4/app/Fragment;

    .line 266
    iget-object v5, v4, Landroid/support/v4/app/FragmentTabHost$a;->d:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/support/v4/app/FragmentTabHost$a;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v5

    if-nez v5, :cond_0

    .line 267
    iget-object v5, v4, Landroid/support/v4/app/FragmentTabHost$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 271
    iput-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->d:Landroid/support/v4/app/FragmentTabHost$a;

    .line 263
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    :cond_1
    if-nez v2, :cond_2

    .line 276
    invoke-virtual {v6}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 278
    :cond_2
    iget-object v5, v4, Landroid/support/v4/app/FragmentTabHost$a;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentTransaction;->d(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 285
    .end local v4    # "tab":Landroid/support/v4/app/FragmentTabHost$a;
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/support/v4/app/FragmentTabHost;->e:Z

    .line 286
    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/FragmentTabHost;->a(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 287
    if-eqz v2, :cond_4

    .line 288
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 289
    invoke-virtual {v6}, Lcn;->b()Z

    .line 291
    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 295
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->e:Z

    .line 297
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 309
    instance-of v1, p1, Landroid/support/v4/app/FragmentTabHost$SavedState;

    if-nez v1, :cond_0

    .line 310
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 316
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 313
    check-cast v0, Landroid/support/v4/app/FragmentTabHost$SavedState;

    .line 314
    .local v0, "ss":Landroid/support/v4/app/FragmentTabHost$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 315
    iget-object v1, v0, Landroid/support/v4/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 301
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 302
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/app/FragmentTabHost$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 303
    .local v0, "ss":Landroid/support/v4/app/FragmentTabHost$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    .line 304
    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentTabHost;->e:Z

    if-eqz v1, :cond_0

    .line 321
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/support/v4/app/FragmentTabHost;->a(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 322
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 326
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->c:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v1, :cond_1

    .line 327
    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->c:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v1, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 329
    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/TabHost$OnTabChangeListener;

    .prologue
    .line 228
    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->c:Landroid/widget/TabHost$OnTabChangeListener;

    .line 229
    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
