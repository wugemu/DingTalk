.class public final Lrx/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Notification$Kind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Throwable;

.field private final b:Lrx/Notification$Kind;

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    new-instance v0, Lrx/Notification;

    sget-object v1, Lrx/Notification$Kind;->OnCompleted:Lrx/Notification$Kind;

    invoke-direct {v0, v1, v2, v2}, Lrx/Notification;-><init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V

    sput-object v0, Lrx/Notification;->d:Lrx/Notification;

    return-void
.end method

.method private constructor <init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "kind"    # Lrx/Notification$Kind;
    .param p3, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification$Kind;",
            "TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v0, p0, Lrx/Notification;->c:Ljava/lang/Object;

    .line 81
    iput-object v0, p0, Lrx/Notification;->a:Ljava/lang/Throwable;

    .line 82
    iput-object p1, p0, Lrx/Notification;->b:Lrx/Notification$Kind;

    .line 83
    return-void
.end method

.method private a()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    .line 2128
    iget-object v2, p0, Lrx/Notification;->b:Lrx/Notification$Kind;

    .line 1155
    sget-object v3, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    if-ne v2, v3, :cond_0

    move v2, v0

    .line 109
    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lrx/Notification;->c:Ljava/lang/Object;

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1155
    goto :goto_0

    :cond_1
    move v0, v1

    .line 109
    goto :goto_1
.end method

.method private b()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    .line 3128
    iget-object v2, p0, Lrx/Notification;->b:Lrx/Notification$Kind;

    .line 2137
    sget-object v3, Lrx/Notification$Kind;->OnError:Lrx/Notification$Kind;

    if-ne v2, v3, :cond_0

    move v2, v0

    .line 119
    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lrx/Notification;->a:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 2137
    goto :goto_0

    :cond_1
    move v0, v1

    .line 119
    goto :goto_1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 207
    if-nez p1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v1

    .line 211
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    .line 212
    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 219
    check-cast v0, Lrx/Notification;

    .line 8128
    .local v0, "notification":Lrx/Notification;, "Lrx/Notification<*>;"
    iget-object v3, v0, Lrx/Notification;->b:Lrx/Notification$Kind;

    .line 9128
    iget-object v4, p0, Lrx/Notification;->b:Lrx/Notification$Kind;

    .line 220
    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lrx/Notification;->c:Ljava/lang/Object;

    iget-object v4, v0, Lrx/Notification;->c:Ljava/lang/Object;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lrx/Notification;->c:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lrx/Notification;->c:Ljava/lang/Object;

    iget-object v4, v0, Lrx/Notification;->c:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    iget-object v3, p0, Lrx/Notification;->a:Ljava/lang/Throwable;

    iget-object v4, v0, Lrx/Notification;->a:Ljava/lang/Throwable;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lrx/Notification;->a:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lrx/Notification;->a:Ljava/lang/Throwable;

    iget-object v4, v0, Lrx/Notification;->a:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 195
    .line 6128
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    iget-object v1, p0, Lrx/Notification;->b:Lrx/Notification$Kind;

    .line 195
    invoke-virtual {v1}, Lrx/Notification$Kind;->hashCode()I

    move-result v0

    .line 196
    .local v0, "hash":I
    invoke-direct {p0}, Lrx/Notification;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    mul-int/lit8 v1, v0, 0x1f

    .line 7100
    iget-object v2, p0, Lrx/Notification;->c:Ljava/lang/Object;

    .line 197
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 199
    :cond_0
    invoke-direct {p0}, Lrx/Notification;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    mul-int/lit8 v1, v0, 0x1f

    .line 8091
    iget-object v2, p0, Lrx/Notification;->a:Ljava/lang/Throwable;

    .line 200
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 202
    :cond_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    const/16 v3, 0x20

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4128
    iget-object v2, p0, Lrx/Notification;->b:Lrx/Notification$Kind;

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    .local v0, "str":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lrx/Notification;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5100
    iget-object v2, p0, Lrx/Notification;->c:Ljava/lang/Object;

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    :cond_0
    invoke-direct {p0}, Lrx/Notification;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6091
    iget-object v2, p0, Lrx/Notification;->a:Ljava/lang/Throwable;

    .line 187
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
