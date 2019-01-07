.class public final Le;
.super Landroid/arch/lifecycle/Lifecycle;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le$a;
    }
.end annotation


# instance fields
.field public a:Landroid/arch/lifecycle/Lifecycle$State;

.field private b:La;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La",
            "<",
            "Ljava/lang/Object;",
            "Le$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ld;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/arch/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld;)V
    .locals 2
    .param p1, "provider"    # Ld;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Landroid/arch/lifecycle/Lifecycle;-><init>()V

    .line 54
    new-instance v0, La;

    invoke-direct {v0}, La;-><init>()V

    iput-object v0, p0, Le;->b:La;

    .line 65
    iput v1, p0, Le;->d:I

    .line 67
    iput-boolean v1, p0, Le;->e:Z

    .line 68
    iput-boolean v1, p0, Le;->f:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le;->g:Ljava/util/ArrayList;

    .line 89
    iput-object p1, p0, Le;->c:Ld;

    .line 90
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->INITIALIZED:Landroid/arch/lifecycle/Lifecycle$State;

    iput-object v0, p0, Le;->a:Landroid/arch/lifecycle/Lifecycle$State;

    .line 91
    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    iget-object v0, p0, Le;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Le;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method private a(Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 1
    .param p1, "state"    # Landroid/arch/lifecycle/Lifecycle$State;

    .prologue
    .line 177
    iget-object v0, p0, Le;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method static b(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;
    .locals 3
    .param p0, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;

    .prologue
    .line 213
    sget-object v0, Le$1;->a:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected event value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :pswitch_0
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    .line 223
    :goto_0
    return-object v0

    .line 219
    :pswitch_1
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    goto :goto_0

    .line 221
    :pswitch_2
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->RESUMED:Landroid/arch/lifecycle/Lifecycle$State;

    goto :goto_0

    .line 223
    :pswitch_3
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 262
    iget-object v3, p0, Le;->b:La;

    .line 7159
    new-instance v0, Lb$d;

    invoke-direct {v0, v3, v4}, Lb$d;-><init>(Lb;B)V

    .line 7160
    iget-object v3, v3, Lb;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .local v0, "ascendingIterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Le;->f:Z

    if-nez v3, :cond_1

    .line 265
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 266
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le$a;

    .line 267
    .local v2, "observer":Le$a;
    :goto_0
    iget-object v3, v2, Le$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v4, p0, Le;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Le;->f:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Le;->b:La;

    .line 268
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, La;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    iget-object v3, v2, Le$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-direct {p0, v3}, Le;->a(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 270
    iget-object v4, p0, Le;->c:Ld;

    iget-object v3, v2, Le$a;->a:Landroid/arch/lifecycle/Lifecycle$State;

    .line 7247
    sget-object v5, Le$1;->b:[I

    invoke-virtual {v3}, Landroid/arch/lifecycle/Lifecycle$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 7258
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unexpected state value "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7250
    :pswitch_0
    sget-object v3, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    .line 270
    :goto_1
    invoke-virtual {v2, v4, v3}, Le$a;->a(Ld;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 271
    invoke-direct {p0}, Le;->a()V

    goto :goto_0

    .line 7252
    :pswitch_1
    sget-object v3, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    goto :goto_1

    .line 7254
    :pswitch_2
    sget-object v3, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    goto :goto_1

    .line 7256
    :pswitch_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 274
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "observer":Le$a;
    :cond_1
    return-void

    .line 7247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 3
    .param p1, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-static {p1}, Le;->b(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    iput-object v0, p0, Le;->a:Landroid/arch/lifecycle/Lifecycle$State;

    .line 114
    iget-boolean v0, p0, Le;->e:Z

    if-eqz v0, :cond_0

    .line 115
    iput-boolean v2, p0, Le;->f:Z

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    iput-boolean v2, p0, Le;->e:Z

    .line 2125
    iget-object v0, p0, Le;->b:La;

    .line 1307
    iput-boolean v1, p0, Le;->f:Z

    .line 121
    iput-boolean v1, p0, Le;->e:Z

    goto :goto_0
.end method
