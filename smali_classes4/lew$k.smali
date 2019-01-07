.class public final Llew$k;
.super Llew;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0}, Llew;-><init>()V

    .line 83
    iput-object p1, p0, Llew$k;->a:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public final a(Lleh;Lleh;)Z
    .locals 1
    .param p1, "root"    # Lleh;
    .param p2, "element"    # Lleh;

    .prologue
    .line 88
    iget-object v0, p0, Llew$k;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lleh;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 93
    const-string/jumbo v0, ".%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Llew$k;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
