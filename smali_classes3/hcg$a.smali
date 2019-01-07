.class public final Lhcg$a;
.super Ljava/lang/Object;
.source "ChatMsgImageCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhcg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean v1, p0, Lhcg$a;->k:Z

    .line 70
    const/16 v0, 0x1c2

    iput v0, p0, Lhcg$a;->a:I

    .line 71
    iput-boolean v1, p0, Lhcg$a;->b:Z

    .line 72
    iput-boolean v1, p0, Lhcg$a;->c:Z

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lhcg$a;->f:I

    .line 74
    iput-boolean v1, p0, Lhcg$a;->d:Z

    .line 75
    return-void
.end method
