.class final Leyc$c;
.super Ljava/lang/Object;
.source "ConferenceAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leyc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

.field b:I

.field final synthetic c:Leyc;


# direct methods
.method private constructor <init>(Leyc;)V
    .locals 1

    .prologue
    .line 1140
    iput-object p1, p0, Leyc$c;->c:Leyc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1193
    const/4 v0, 0x0

    iput-object v0, p0, Leyc$c;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    .line 1194
    const/4 v0, 0x0

    iput v0, p0, Leyc$c;->b:I

    return-void
.end method

.method synthetic constructor <init>(Leyc;B)V
    .locals 0
    .param p1, "x0"    # Leyc;

    .prologue
    .line 1140
    invoke-direct {p0, p1}, Leyc$c;-><init>(Leyc;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1151
    iget v0, p0, Leyc$c;->b:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 2158
    iget-object v0, p0, Leyc$c;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    if-nez v0, :cond_1

    .line 2159
    :cond_0
    :goto_0
    return-void

    .line 2162
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Leyc$c$1;

    invoke-direct {v1, p0}, Leyc$c$1;-><init>(Leyc$c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2189
    iget v1, p0, Leyc$c;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Leyc$c;->b:I

    .line 2190
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
