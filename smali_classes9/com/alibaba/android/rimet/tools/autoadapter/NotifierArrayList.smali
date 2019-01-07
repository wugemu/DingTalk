.class public Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;
.super Ljava/util/ArrayList;
.source "NotifierArrayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;,
        Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private mCommand:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList",
            "<TE;>.a;"
        }
    .end annotation
.end field

.field private mNotiferAdapter:Lelx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lelx",
            "<TE;>;"
        }
    .end annotation
.end field

.field private mNotificationForSetEnabled:Z

.field private mOnDataChangedListener:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$b;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;, "Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList<TE;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iput-object v2, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mOnDataChangedListener:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$b;

    .line 28
    new-instance v0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;-><init>(Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;B)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mCommand:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;

    .line 31
    iput-object v2, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mNotiferAdapter:Lelx;

    .line 34
    iput-boolean v1, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mNotificationForSetEnabled:Z

    .line 159
    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;)Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mOnDataChangedListener:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$b;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;)Lelx;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mNotiferAdapter:Lelx;

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;, "Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mCommand:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->a()V

    .line 61
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 66
    .local p0, "this":Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;, "Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 68
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mCommand:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->a()V

    .line 72
    :cond_0
    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 100
    .local p0, "this":Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;, "Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 102
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mCommand:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->a()V

    .line 106
    :cond_0
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 88
    .local p0, "this":Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;, "Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 90
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mCommand:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->a()V

    .line 94
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 149
    .local p0, "this":Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;, "Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList<TE;>;"
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->isEmpty()Z

    move-result v0

    .line 150
    .local v0, "empty":Z
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 152
    if-nez v0, :cond_0

    .line 153
    iget-object v1, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mCommand:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->a()V

    .line 155
    :cond_0
    return-void
.end method

.method public enableAdapterNotify(Lelx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lelx",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;, "Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList<TE;>;"
    .local p1, "adapter":Lelx;, "Lelx<TE;>;"
    iput-object p1, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mNotiferAdapter:Lelx;

    .line 48
    return-void
.end method

.method public enableNotificationForSet(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 54
    .local p0, "this":Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;, "Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList<TE;>;"
    iput-boolean p1, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mNotificationForSetEnabled:Z

    .line 55
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 111
    .local p0, "this":Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;, "Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList<TE;>;"
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "ret":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mCommand:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->a()V

    .line 113
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 137
    .local p0, "this":Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;, "Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList<TE;>;"
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 139
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mCommand:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->a()V

    .line 143
    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 119
    .local p0, "this":Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;, "Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-super {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 121
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mCommand:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->a()V

    .line 125
    :cond_0
    return v0
.end method

.method protected removeRange(II)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 130
    .local p0, "this":Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;, "Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList<TE;>;"
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mCommand:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->a()V

    .line 132
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 76
    .local p0, "this":Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;, "Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, "ret":Ljava/lang/Object;, "TE;"
    iget-boolean v1, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mNotificationForSetEnabled:Z

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mCommand:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->a()V

    .line 82
    :cond_0
    return-object v0
.end method

.method public setOnDataChangedListener(Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$b;)V
    .locals 0
    .param p1, "l"    # Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$b;

    .prologue
    .line 40
    .local p0, "this":Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;, "Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList<TE;>;"
    iput-object p1, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->mOnDataChangedListener:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$b;

    .line 41
    return-void
.end method
