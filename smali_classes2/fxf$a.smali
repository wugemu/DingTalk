.class public final Lfxf$a;
.super Ljava/lang/Object;
.source "PhoneCodeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfxf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lfxf$a;->a:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lfxf$a;->b:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lfxf$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lfxf$a;)Lfxf$a;
    .locals 1
    .param p1, "tmp"    # Lfxf$a;

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p1, Lfxf$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lfxf$a;->a:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lfxf$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lfxf$a;->b:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lfxf$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lfxf$a;->c:Ljava/lang/String;

    .line 64
    :cond_0
    return-object p0
.end method
