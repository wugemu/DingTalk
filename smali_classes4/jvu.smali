.class public final Ljvu;
.super Ljava/lang/Object;

# interfaces
.implements Lkdi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljvu$a;
    }
.end annotation


# static fields
.field public static a:Z


# instance fields
.field private b:Ljava/text/SimpleDateFormat;

.field private c:Lkde;

.field private d:Ljvu$a;

.field private e:Ljvu$a;

.field private f:Lkdh;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Ljuq;->b()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Ljvu;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lkde;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "hh:mm:ss aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljvu;->b:Ljava/text/SimpleDateFormat;

    iput-object v2, p0, Ljvu;->c:Lkde;

    iput-object v2, p0, Ljvu;->d:Ljvu$a;

    iput-object v2, p0, Ljvu;->e:Ljvu$a;

    iput-object v2, p0, Ljvu;->f:Lkdh;

    const-string/jumbo v0, "[Slim] "

    iput-object v0, p0, Ljvu;->g:Ljava/lang/String;

    iput-object p1, p0, Ljvu;->c:Lkde;

    .line 1000
    new-instance v0, Ljvu$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljvu$a;-><init>(Ljvu;Z)V

    iput-object v0, p0, Ljvu;->d:Ljvu$a;

    new-instance v0, Ljvu$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljvu$a;-><init>(Ljvu;Z)V

    iput-object v0, p0, Ljvu;->e:Ljvu$a;

    iget-object v0, p0, Ljvu;->c:Lkde;

    iget-object v1, p0, Ljvu;->d:Ljvu$a;

    iget-object v2, p0, Ljvu;->d:Ljvu$a;

    invoke-virtual {v0, v1, v2}, Lkde;->a(Lkdk;Lkdl;)V

    iget-object v0, p0, Ljvu;->c:Lkde;

    iget-object v1, p0, Ljvu;->e:Ljvu$a;

    iget-object v2, p0, Ljvu;->e:Ljvu$a;

    invoke-virtual {v0, v1, v2}, Lkde;->b(Lkdk;Lkdl;)V

    new-instance v0, Ljvv;

    invoke-direct {v0, p0}, Ljvv;-><init>(Ljvu;)V

    iput-object v0, p0, Ljvu;->f:Lkdh;

    .line 0
    return-void
.end method

.method static synthetic a(Ljvu;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Ljvu;->b:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic b(Ljvu;)Lkde;
    .locals 1

    iget-object v0, p0, Ljvu;->c:Lkde;

    return-object v0
.end method
