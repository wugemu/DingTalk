.class public Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;
.super Landroid/view/ViewGroup;
.source "BubbleContainer.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$c;,
        Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$b;,
        Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$a;
    }
.end annotation


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field private A:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$c;

.field private B:I

.field public a:I

.field public b:Z

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhzn;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhzn;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhzm;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lhzm;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lhzm;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lhzm;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;",
            "Ljava/util/HashSet",
            "<",
            "Lhzm;",
            ">;>;"
        }
    .end annotation
.end field

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$a;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$b;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public m:Z

.field public n:Z

.field public o:Z

.field private q:I

.field private r:Z

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhzn;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Landroid/view/GestureDetector;

.field private u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private v:I

.field private w:I

.field private x:I

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 40
    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->r:Z

    .line 42
    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->b:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->s:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->d:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->i:Ljava/util/HashMap;

    .line 60
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->t:Landroid/view/GestureDetector;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->j:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->k:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->l:Ljava/util/Set;

    .line 70
    iput v3, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->v:I

    .line 72
    iput v3, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->w:I

    .line 73
    iput v3, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->x:I

    .line 75
    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->m:Z

    .line 76
    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->y:Z

    .line 84
    const/16 v0, 0x1300

    iput v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->z:I

    .line 86
    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->n:Z

    .line 88
    new-instance v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$c;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$c;-><init>(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;B)V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->A:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$c;

    .line 90
    const/16 v0, 0x12

    iput v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->B:I

    .line 92
    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->o:Z

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->r:Z

    .line 42
    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->b:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->s:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->d:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->i:Ljava/util/HashMap;

    .line 60
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->t:Landroid/view/GestureDetector;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->j:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->k:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->l:Ljava/util/Set;

    .line 70
    iput v3, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->v:I

    .line 72
    iput v3, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->w:I

    .line 73
    iput v3, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->x:I

    .line 75
    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->m:Z

    .line 76
    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->y:Z

    .line 84
    const/16 v0, 0x1300

    iput v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->z:I

    .line 86
    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->n:Z

    .line 88
    new-instance v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$c;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$c;-><init>(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;B)V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->A:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$c;

    .line 90
    const/16 v0, 0x12

    iput v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->B:I

    .line 92
    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->o:Z

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->r:Z

    .line 42
    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->b:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->s:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->d:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->i:Ljava/util/HashMap;

    .line 60
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->t:Landroid/view/GestureDetector;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->j:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->k:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->l:Ljava/util/Set;

    .line 70
    iput v3, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->v:I

    .line 72
    iput v3, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->w:I

    .line 73
    iput v3, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->x:I

    .line 75
    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->m:Z

    .line 76
    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->y:Z

    .line 84
    const/16 v0, 0x1300

    iput v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->z:I

    .line 86
    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->n:Z

    .line 88
    new-instance v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$c;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$c;-><init>(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;B)V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->A:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$c;

    .line 90
    const/16 v0, 0x12

    iput v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->B:I

    .line 92
    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->o:Z

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->v:I

    return p1
.end method

.method public static a(Ljava/util/List;Lhzm;)I
    .locals 6
    .param p1, "item"    # Lhzm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhzm;",
            ">;",
            "Lhzm;",
            ")I"
        }
    .end annotation

    .prologue
    .line 842
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lhzm;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 843
    const/4 v1, -0x1

    .line 855
    :goto_0
    return v1

    .line 845
    :cond_0
    const/4 v1, 0x0

    .line 846
    .local v1, "insertAt":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 847
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 848
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhzm;

    .line 18142
    .local v3, "toCompare":Lhzm;
    iget-object v4, p1, Lhzm;->c:Lhzn;

    .line 849
    iget v4, v4, Lhzn;->f:I

    .line 19142
    iget-object v5, v3, Lhzm;->c:Lhzn;

    .line 849
    iget v5, v5, Lhzn;->f:I

    if-ne v4, v5, :cond_2

    .line 20142
    iget-object v4, p1, Lhzm;->c:Lhzn;

    .line 849
    iget v4, v4, Lhzn;->e:I

    .line 21142
    iget-object v5, v3, Lhzm;->c:Lhzn;

    .line 849
    iget v5, v5, Lhzn;->e:I

    if-le v4, v5, :cond_2

    .line 850
    add-int/lit8 v1, v0, 0x1

    .line 854
    .end local v3    # "toCompare":Lhzm;
    :cond_1
    invoke-interface {p0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 847
    .restart local v3    # "toCompare":Lhzm;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(I)V
    .locals 11
    .param p1, "direction"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    .line 437
    iget-boolean v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->n:Z

    if-eqz v7, :cond_1

    .line 516
    :cond_0
    return-void

    .line 440
    :cond_1
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_0

    .line 444
    const/16 v7, 0x100

    if-ne p1, v7, :cond_7

    .line 445
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->q:I

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_2

    .line 446
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzm;

    .line 447
    .local v0, "animateWrapper":Lhzm;
    invoke-virtual {v0, p1}, Lhzm;->a(I)V

    goto :goto_0

    .line 450
    .end local v0    # "animateWrapper":Lhzm;
    :cond_2
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzm;

    .line 451
    .restart local v0    # "animateWrapper":Lhzm;
    invoke-virtual {v0, p1, v10}, Lhzm;->a(IZ)V

    .line 14142
    iget-object v5, v0, Lhzm;->c:Lhzn;

    .line 453
    .local v5, "position":Lhzn;
    if-eqz v5, :cond_3

    iget v8, v5, Lhzn;->f:I

    if-gez v8, :cond_3

    .line 454
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v8, v0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->a(Ljava/util/List;Lhzm;)I

    .line 455
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 458
    .end local v0    # "animateWrapper":Lhzm;
    .end local v5    # "position":Lhzn;
    :cond_4
    const/4 v6, 0x0

    .line 459
    .local v6, "row":I
    const/4 v2, 0x0

    .line 462
    .local v2, "counter":I
    :goto_2
    iget v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->q:I

    if-ge v2, v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-gt v2, v7, :cond_0

    .line 463
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    .line 464
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v4, :cond_6

    .line 465
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhzm;

    .line 15142
    .local v1, "animator":Lhzm;
    iget-object v7, v1, Lhzm;->c:Lhzn;

    .line 466
    iget v7, v7, Lhzn;->e:I

    if-ne v7, v6, :cond_5

    .line 467
    invoke-virtual {v1, p1, v10}, Lhzm;->a(IZ)V

    .line 468
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 469
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v7, v1}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->a(Ljava/util/List;Lhzm;)I

    .line 470
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->l:Ljava/util/Set;

    .line 15214
    iget v8, v1, Lhzm;->a:I

    .line 470
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 471
    add-int/lit8 v6, v6, 0x1

    .line 472
    add-int/lit8 v2, v2, 0x1

    .line 473
    goto :goto_2

    .line 464
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 476
    .end local v1    # "animator":Lhzm;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 477
    goto :goto_2

    .line 479
    .end local v2    # "counter":I
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v6    # "row":I
    :cond_7
    const/16 v7, 0x200

    if-ne p1, v7, :cond_0

    .line 480
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 481
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzm;

    .line 482
    .restart local v0    # "animateWrapper":Lhzm;
    invoke-virtual {v0, p1}, Lhzm;->a(I)V

    goto :goto_4

    .line 485
    .end local v0    # "animateWrapper":Lhzm;
    :cond_8
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzm;

    .line 486
    .restart local v0    # "animateWrapper":Lhzm;
    invoke-virtual {v0, p1, v10}, Lhzm;->a(IZ)V

    .line 16142
    iget-object v5, v0, Lhzm;->c:Lhzn;

    .line 488
    .restart local v5    # "position":Lhzn;
    if-eqz v5, :cond_9

    iget v8, v5, Lhzn;->f:I

    iget v9, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->a:I

    if-lt v8, v9, :cond_9

    .line 489
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v8, v0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->a(Ljava/util/List;Lhzm;)I

    .line 490
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 493
    .end local v0    # "animateWrapper":Lhzm;
    .end local v5    # "position":Lhzn;
    :cond_a
    const/4 v6, 0x0

    .line 494
    .restart local v6    # "row":I
    const/4 v2, 0x0

    .line 497
    .restart local v2    # "counter":I
    :goto_6
    iget v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->q:I

    if-ge v2, v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-gt v2, v7, :cond_0

    .line 498
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    .line 499
    .restart local v4    # "length":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7
    if-ge v3, v4, :cond_c

    .line 500
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhzm;

    .line 17142
    .restart local v1    # "animator":Lhzm;
    iget-object v7, v1, Lhzm;->c:Lhzn;

    .line 501
    iget v7, v7, Lhzn;->e:I

    if-ne v7, v6, :cond_b

    .line 502
    invoke-virtual {v1, p1, v10}, Lhzm;->a(IZ)V

    .line 503
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->l:Ljava/util/Set;

    .line 17214
    iget v8, v1, Lhzm;->a:I

    .line 503
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 504
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 505
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v7, v1}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->a(Ljava/util/List;Lhzm;)I

    .line 507
    add-int/lit8 v6, v6, 0x1

    .line 508
    add-int/lit8 v2, v2, 0x1

    .line 509
    goto :goto_6

    .line 499
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 512
    .end local v1    # "animator":Lhzm;
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 513
    goto :goto_6
.end method

.method static synthetic b(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->z:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;Lhzm;)V
    .locals 4
    .param p1, "type"    # Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;
    .param p2, "bubbleAnimateWrapper"    # Lhzm;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 766
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->i:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 767
    .local v1, "counter":Ljava/util/HashSet;, "Ljava/util/HashSet<Lhzm;>;"
    if-nez v1, :cond_0

    .line 768
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "counter":Ljava/util/HashSet;, "Ljava/util/HashSet<Lhzm;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 769
    .restart local v1    # "counter":Ljava/util/HashSet;, "Ljava/util/HashSet<Lhzm;>;"
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->i:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 772
    sget-object v2, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$3;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 784
    :cond_1
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 785
    return-void

    .line 777
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$a;

    .line 778
    .local v0, "animationListener":Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$a;
    invoke-interface {v0, p1}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$a;->a(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;)V

    goto :goto_0

    .line 772
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p2, v1, :cond_1

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 160
    .local v0, "wrapperIndex":I
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    new-instance v2, Lhzm;

    invoke-direct {v2, p1, v0}, Lhzm;-><init>(Landroid/view/View;I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 162
    new-instance v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$2;

    invoke-direct {v1, p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$2;-><init>(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 171
    .end local v0    # "wrapperIndex":I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 172
    return-void
.end method

.method public final b(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;Lhzm;)V
    .locals 4
    .param p1, "type"    # Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;
    .param p2, "bubbleAnimateWrapper"    # Lhzm;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 790
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->i:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 791
    .local v1, "counter":Ljava/util/Set;, "Ljava/util/Set<Lhzm;>;"
    if-eqz v1, :cond_0

    .line 792
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 793
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 794
    sget-object v2, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$3;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 796
    :pswitch_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->n:Z

    goto :goto_0

    .line 802
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$a;

    .line 803
    .local v0, "animationListener":Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$a;
    invoke-interface {v0, p1}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$a;->b(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;)V

    goto :goto_1

    .line 794
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v2, v4

    .line 521
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v3, v4

    .line 525
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 548
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 530
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 533
    :pswitch_2
    iget v4, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->w:I

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v0, v4, 0x0

    .line 534
    .local v0, "dealtX":I
    iget v4, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->x:I

    sub-int v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x0

    .line 535
    .local v1, "dealtY":I
    if-lt v0, v1, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 540
    :goto_1
    iput v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->w:I

    .line 541
    iput v3, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->x:I

    goto :goto_0

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 559
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 560
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->i:Ljava/util/HashMap;

    sget-object v3, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->EdgeBounceLeft:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->i:Ljava/util/HashMap;

    sget-object v3, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->EdgeBounceRight:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->i:Ljava/util/HashMap;

    sget-object v3, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->MoveLeft:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->i:Ljava/util/HashMap;

    sget-object v3, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->MoveRight:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->i:Ljava/util/HashMap;

    sget-object v3, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->ReplaceScale:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-static {}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->a()Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;

    move-result-object v2

    .line 18031
    if-eqz p0, :cond_0

    iget-object v3, v2, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 18032
    iget-object v2, v2, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->m:Z

    if-eqz v2, :cond_1

    .line 567
    iput-boolean v5, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->y:Z

    .line 569
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->m:Z

    .line 570
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 571
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 572
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 573
    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->A:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$c;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 575
    iget-boolean v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->y:Z

    if-eqz v2, :cond_2

    .line 576
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzm;

    .line 577
    .local v0, "animateWrapper":Lhzm;
    invoke-virtual {v0, v5}, Lhzm;->a(Z)V

    goto :goto_0

    .line 580
    .end local v0    # "animateWrapper":Lhzm;
    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 584
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 585
    invoke-static {}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->a()Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;

    move-result-object v0

    .line 18039
    if-eqz p0, :cond_0

    .line 18040
    iget-object v0, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->m:Z

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->n:Z

    .line 589
    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->A:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 590
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 594
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v6, 0x42480000    # 50.0f

    .line 625
    const/4 v3, 0x0

    .line 627
    .local v3, "result":Z
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v1, v4, v5

    .line 628
    .local v1, "diffY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v0, v4, v5

    .line 629
    .local v0, "diffX":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 630
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    .line 631
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 632
    const/16 v4, 0x200

    invoke-direct {p0, v4}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->a(I)V

    .line 636
    :goto_0
    const/4 v3, 0x1

    .line 642
    .end local v0    # "diffX":F
    .end local v1    # "diffY":F
    :cond_0
    :goto_1
    return v3

    .line 634
    .restart local v0    # "diffX":F
    .restart local v1    # "diffY":F
    :cond_1
    const/16 v4, 0x100

    invoke-direct {p0, v4}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 639
    .end local v0    # "diffX":F
    .end local v1    # "diffY":F
    :catch_0
    move-exception v2

    .line 640
    .local v2, "exception":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->z:I

    const/16 v3, 0x1200

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->y:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->o:Z

    if-eqz v2, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->B:I

    if-lt v2, v3, :cond_0

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v16, v2, 0x0

    .line 273
    .local v16, "end":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->getChildCount()I

    move-result v14

    .line 274
    .local v14, "childCount":I
    move/from16 v0, v16

    if-le v0, v14, :cond_2

    .line 275
    move/from16 v16, v14

    .line 278
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->l:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 282
    const/4 v15, 0x0

    .line 283
    .local v15, "count":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 284
    .local v12, "bubbleLength":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v12, :cond_3

    if-ge v15, v14, :cond_3

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lhzn;

    .line 286
    .local v18, "position":Lhzn;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 287
    .local v13, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lhzm;

    .line 11146
    .local v11, "animator":Lhzm;
    move-object/from16 v0, v18

    iput-object v0, v11, Lhzm;->c:Lhzn;

    .line 289
    move-object/from16 v0, v18

    iget v2, v0, Lhzn;->a:F

    float-to-int v2, v2

    move-object/from16 v0, v18

    iget v3, v0, Lhzn;->b:F

    float-to-int v3, v3

    move-object/from16 v0, v18

    iget v4, v0, Lhzn;->a:F

    move-object/from16 v0, v18

    iget v5, v0, Lhzn;->c:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v18

    iget v5, v0, Lhzn;->b:F

    move-object/from16 v0, v18

    iget v6, v0, Lhzn;->d:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v13, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v15, v15, 0x1

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->l:Ljava/util/Set;

    .line 11214
    iget v3, v11, Lhzm;->a:I

    .line 292
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 284
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 295
    .end local v11    # "animator":Lhzm;
    .end local v13    # "child":Landroid/view/View;
    .end local v18    # "position":Lhzn;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 297
    .local v19, "tailNailSize":I
    move/from16 v17, v16

    :goto_2
    move/from16 v0, v17

    if-ge v0, v14, :cond_4

    if-ge v15, v14, :cond_4

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->d:Ljava/util/ArrayList;

    sub-int v3, v17, v16

    rem-int v3, v3, v19

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lhzn;

    .line 299
    .restart local v18    # "position":Lhzn;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 300
    .restart local v13    # "child":Landroid/view/View;
    move-object/from16 v0, v18

    iget v2, v0, Lhzn;->a:F

    float-to-int v2, v2

    move-object/from16 v0, v18

    iget v3, v0, Lhzn;->b:F

    float-to-int v3, v3

    move-object/from16 v0, v18

    iget v4, v0, Lhzn;->a:F

    move-object/from16 v0, v18

    iget v5, v0, Lhzn;->c:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v18

    iget v5, v0, Lhzn;->b:F

    move-object/from16 v0, v18

    iget v6, v0, Lhzn;->d:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v13, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lhzm;

    .line 12146
    .restart local v11    # "animator":Lhzm;
    move-object/from16 v0, v18

    iput-object v0, v11, Lhzm;->c:Lhzn;

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lhzm;->a(Z)V

    .line 297
    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 307
    .end local v11    # "animator":Lhzm;
    .end local v13    # "child":Landroid/view/View;
    .end local v18    # "position":Lhzn;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->B:I

    if-ne v2, v3, :cond_0

    .line 308
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->o:Z

    .line 13119
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 13120
    new-instance v20, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 13121
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 13122
    new-instance v3, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v3, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 13123
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    .line 13124
    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v3, v4}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 13125
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 13126
    new-instance v4, Lhzo;

    invoke-direct {v4}, Lhzo;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 13127
    new-instance v4, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$1;-><init>(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 13152
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->startLayoutAnimation()V

    goto/16 :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 621
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 190
    iget-boolean v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->b:Z

    if-eqz v8, :cond_d

    .line 1369
    iget v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->q:I

    if-lez v8, :cond_c

    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    .line 1370
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    iget v10, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->q:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    iput v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->a:I

    .line 1371
    const/4 v8, 0x0

    .line 1372
    iget-object v9, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v9, v8

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhzn;

    .line 1373
    iget v11, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->q:I

    rem-int v11, v9, v11

    iput v11, v8, Lhzn;->e:I

    .line 1374
    iget v11, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->q:I

    div-int v11, v9, v11

    iput v11, v8, Lhzn;->f:I

    .line 1375
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .line 1376
    goto :goto_0

    .line 1378
    :cond_0
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1379
    const/4 v8, 0x0

    move v11, v8

    :goto_1
    if-ge v11, v12, :cond_4

    .line 1380
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhzn;

    .line 1381
    add-int/lit8 v9, v11, 0x1

    move v10, v9

    :goto_2
    if-ge v10, v12, :cond_3

    .line 1382
    iget-object v9, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhzn;

    .line 1383
    iget v13, v8, Lhzn;->e:I

    iget v14, v9, Lhzn;->e:I

    if-ne v13, v14, :cond_2

    iget v13, v8, Lhzn;->f:I

    add-int/lit8 v13, v13, 0x1

    iget v14, v9, Lhzn;->f:I

    if-ne v13, v14, :cond_2

    .line 2033
    iput-object v9, v8, Lhzn;->k:Lhzn;

    .line 2051
    iput-object v8, v9, Lhzn;->j:Lhzn;

    .line 1381
    :cond_1
    :goto_3
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_2

    .line 1386
    :cond_2
    iget v13, v8, Lhzn;->f:I

    iget v14, v9, Lhzn;->f:I

    if-ne v13, v14, :cond_1

    iget v13, v8, Lhzn;->e:I

    add-int/lit8 v13, v13, 0x1

    iget v14, v9, Lhzn;->e:I

    if-ne v13, v14, :cond_1

    .line 2068
    iput-object v9, v8, Lhzn;->m:Lhzn;

    .line 3061
    iput-object v8, v9, Lhzn;->l:Lhzn;

    goto :goto_3

    .line 1379
    :cond_3
    add-int/lit8 v8, v11, 0x1

    move v11, v8

    goto :goto_1

    .line 3320
    :cond_4
    iget v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->q:I

    if-lez v8, :cond_c

    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    .line 3321
    const/4 v8, 0x0

    move v10, v8

    :goto_4
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->s:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v10, v8, :cond_6

    .line 3322
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->s:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhzn;

    .line 3323
    iget v9, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->q:I

    rem-int v9, v10, v9

    iput v9, v8, Lhzn;->e:I

    .line 3324
    iget v9, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->q:I

    div-int v9, v10, v9

    rsub-int/lit8 v9, v9, -0x1

    iput v9, v8, Lhzn;->f:I

    .line 3325
    if-lez v10, :cond_5

    .line 3326
    iget-object v9, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->s:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhzn;

    .line 3327
    iget v11, v9, Lhzn;->e:I

    iget v12, v8, Lhzn;->e:I

    if-ne v11, v12, :cond_5

    iget v11, v9, Lhzn;->e:I

    add-int/lit8 v11, v11, 0x1

    iget v12, v8, Lhzn;->e:I

    if-ne v11, v12, :cond_5

    .line 4068
    iput-object v8, v9, Lhzn;->m:Lhzn;

    .line 5061
    iput-object v9, v8, Lhzn;->l:Lhzn;

    .line 3321
    :cond_5
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    goto :goto_4

    .line 3334
    :cond_6
    const/4 v8, 0x0

    move v10, v8

    :goto_5
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v10, v8, :cond_8

    .line 3335
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhzn;

    .line 3336
    iget v9, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->q:I

    rem-int v9, v10, v9

    iput v9, v8, Lhzn;->e:I

    .line 3337
    iget v9, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->a:I

    iget v11, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->q:I

    div-int v11, v10, v11

    add-int/2addr v9, v11

    iput v9, v8, Lhzn;->f:I

    .line 3338
    if-lez v10, :cond_7

    .line 3339
    iget-object v9, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhzn;

    .line 3340
    iget v11, v9, Lhzn;->e:I

    iget v12, v8, Lhzn;->e:I

    if-ne v11, v12, :cond_7

    iget v11, v9, Lhzn;->e:I

    add-int/lit8 v11, v11, 0x1

    iget v12, v8, Lhzn;->e:I

    if-ne v11, v12, :cond_7

    .line 5068
    iput-object v8, v9, Lhzn;->m:Lhzn;

    .line 6061
    iput-object v9, v8, Lhzn;->l:Lhzn;

    .line 3334
    :cond_7
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    goto :goto_5

    .line 3347
    :cond_8
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->s:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->q:I

    if-lt v8, v9, :cond_9

    iget v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->q:I

    move v10, v8

    .line 3349
    :goto_6
    const/4 v8, 0x0

    move v11, v8

    :goto_7
    if-ge v11, v10, :cond_a

    .line 3350
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhzn;

    .line 3351
    iget-object v9, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->s:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhzn;

    .line 7051
    iput-object v9, v8, Lhzn;->j:Lhzn;

    .line 8033
    iput-object v8, v9, Lhzn;->k:Lhzn;

    .line 3349
    add-int/lit8 v8, v11, 0x1

    move v11, v8

    goto :goto_7

    .line 3347
    :cond_9
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->s:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v10, v8

    goto :goto_6

    .line 3356
    :cond_a
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->q:I

    if-lt v8, v9, :cond_b

    iget v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->q:I

    move v10, v8

    .line 3358
    :goto_8
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 3359
    const/4 v8, 0x0

    move v11, v8

    :goto_9
    if-ge v11, v10, :cond_c

    .line 3360
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    sub-int v9, v12, v10

    add-int/2addr v9, v11

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhzn;

    .line 3361
    iget-object v9, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhzn;

    .line 9033
    iput-object v9, v8, Lhzn;->k:Lhzn;

    .line 9051
    iput-object v8, v9, Lhzn;->j:Lhzn;

    .line 3359
    add-int/lit8 v8, v11, 0x1

    move v11, v8

    goto :goto_9

    .line 3356
    :cond_b
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v10, v8

    goto :goto_8

    .line 192
    :cond_c
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->b:Z

    .line 195
    :cond_d
    iget-boolean v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->y:Z

    if-nez v8, :cond_e

    iget v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->z:I

    const/16 v9, 0x1200

    if-eq v8, v9, :cond_e

    iget-boolean v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->o:Z

    if-eqz v8, :cond_f

    .line 228
    :cond_e
    return-void

    .line 200
    :cond_f
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->B:I

    if-lt v8, v9, :cond_e

    .line 206
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v4, v8, 0x0

    .line 207
    .local v4, "end":I
    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->getChildCount()I

    move-result v2

    .line 208
    .local v2, "childCount":I
    if-le v4, v2, :cond_10

    .line 209
    move v4, v2

    .line 212
    :cond_10
    const/4 v3, 0x0

    .line 213
    .local v3, "count":I
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 214
    .local v0, "bubbleLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_a
    if-ge v5, v0, :cond_11

    if-ge v3, v2, :cond_11

    .line 215
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhzn;

    .line 216
    .local v6, "position":Lhzn;
    invoke-virtual {p0, v3}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 217
    .local v1, "child":Landroid/view/View;
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhzm;

    .line 9146
    iput-object v6, v8, Lhzm;->c:Lhzn;

    .line 218
    iget v8, v6, Lhzn;->c:F

    float-to-int v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v9, v6, Lhzn;->d:F

    float-to-int v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/view/View;->measure(II)V

    .line 214
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 221
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "position":Lhzn;
    :cond_11
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 222
    .local v7, "tailNailSize":I
    move v5, v4

    :goto_b
    if-ge v5, v2, :cond_e

    if-ge v3, v2, :cond_e

    .line 223
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->d:Ljava/util/ArrayList;

    sub-int v9, v5, v4

    rem-int/2addr v9, v7

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhzn;

    .line 224
    .restart local v6    # "position":Lhzn;
    invoke-virtual {p0, v3}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 225
    .restart local v1    # "child":Landroid/view/View;
    iget-object v8, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhzm;

    .line 10146
    iput-object v6, v8, Lhzm;->c:Lhzn;

    .line 226
    iget v8, v6, Lhzn;->c:F

    float-to-int v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v9, v6, Lhzn;->d:F

    float-to-int v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/view/View;->measure(II)V

    .line 222
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_b
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 615
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 600
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 604
    iget v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->v:I

    if-ltz v1, :cond_1

    .line 605
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$b;

    .line 606
    .local v0, "listener":Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$b;
    iget v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->v:I

    invoke-interface {v0, v2}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$b;->onClick(I)V

    goto :goto_0

    .line 608
    .end local v0    # "listener":Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$b;
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->v:I

    .line 610
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->t:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhzm;

    .line 1150
    .local v1, "wrapper":Lhzm;
    iget-object v2, v1, Lhzm;->b:Landroid/view/View;

    .line 178
    if-ne v2, p1, :cond_1

    .line 179
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 183
    .end local v1    # "wrapper":Lhzm;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 184
    return-void

    .line 176
    .restart local v1    # "wrapper":Lhzm;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setHeadNails([[F)V
    .locals 7
    .param p1, "nailInfo"    # [[F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 231
    if-nez p1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 236
    array-length v3, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, p1, v2

    .line 237
    .local v1, "position":[F
    array-length v4, v1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 238
    new-instance v0, Lhzn;

    invoke-direct {v0, v1}, Lhzn;-><init>([F)V

    .line 239
    .local v0, "bp":Lhzn;
    iput-boolean v6, v0, Lhzn;->i:Z

    .line 240
    iget-object v4, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v0    # "bp":Lhzn;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 243
    .end local v1    # "position":[F
    :cond_2
    iput-boolean v6, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->b:Z

    goto :goto_0
.end method

.method public setPositions([[F)V
    .locals 8
    .param p1, "positions"    # [[F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 397
    if-nez p1, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 405
    array-length v2, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v0, p1, v1

    .line 406
    .local v0, "position":[F
    array-length v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 407
    iget-object v3, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->c:Ljava/util/ArrayList;

    new-instance v4, Lhzn;

    invoke-direct {v4, v0}, Lhzn;-><init>([F)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    aget v3, v0, v6

    sget v4, Lhzn;->g:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 409
    aget v3, v0, v6

    sput v3, Lhzn;->g:F

    .line 411
    :cond_2
    aget v3, v0, v7

    sget v4, Lhzn;->h:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 412
    aget v3, v0, v7

    sput v3, Lhzn;->h:F

    .line 405
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 416
    .end local v0    # "position":[F
    :cond_4
    iput-boolean v5, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->b:Z

    .line 417
    iget-boolean v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->r:Z

    if-nez v1, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->startLayoutAnimation()V

    .line 419
    iput-boolean v5, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->r:Z

    goto :goto_0
.end method

.method public setRows(I)V
    .locals 1
    .param p1, "rows"    # I

    .prologue
    .line 315
    iput p1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->q:I

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->b:Z

    .line 317
    return-void
.end method

.method public setTailNails([[F)V
    .locals 7
    .param p1, "nailInfo"    # [[F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 247
    if-nez p1, :cond_0

    .line 259
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 251
    array-length v3, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, p1, v2

    .line 252
    .local v1, "position":[F
    array-length v4, v1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 253
    new-instance v0, Lhzn;

    invoke-direct {v0, v1}, Lhzn;-><init>([F)V

    .line 254
    .local v0, "bp":Lhzn;
    iput-boolean v6, v0, Lhzn;->i:Z

    .line 255
    iget-object v4, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v0    # "bp":Lhzn;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 258
    .end local v1    # "position":[F
    :cond_2
    iput-boolean v6, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->b:Z

    goto :goto_0
.end method

.method public setTotal(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 112
    if-lez p1, :cond_0

    iget v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->B:I

    if-eq p1, v0, :cond_0

    .line 113
    iput p1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->B:I

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->requestLayout()V

    .line 116
    :cond_0
    return-void
.end method
