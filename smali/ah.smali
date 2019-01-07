.class final Lah;
.super Ljava/lang/Object;
.source "GhostViewApi21.java"

# interfaces
.implements Lai;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lah$a;
    }
.end annotation


# static fields
.field static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static b:Ljava/lang/reflect/Method;

.field static c:Z

.field static d:Ljava/lang/reflect/Method;

.field static e:Z

.field private static f:Z


# instance fields
.field private final g:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "ghostView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lah;->g:Landroid/view/View;

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;B)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lah;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static a()V
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lah;->f:Z

    if-nez v0, :cond_0

    .line 95
    :try_start_0
    const-string/jumbo v0, "android.view.GhostView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lah;->a:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lah;->f:Z

    .line 101
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 90
    return-void
.end method

.method public final setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lah;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    return-void
.end method
