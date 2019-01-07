.class public final Ljlm$a;
.super Ljava/lang/Object;
.source "OutputContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljlm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljlm$a;->a:Z

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;)Ljlm$a;
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "originalErrorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljlm$a;->a:Z

    .line 118
    iput p1, p0, Ljlm$a;->f:I

    .line 119
    iput p2, p0, Ljlm$a;->g:I

    .line 120
    iput-object p3, p0, Ljlm$a;->h:Ljava/lang/String;

    .line 121
    return-object p0
.end method
