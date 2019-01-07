.class final Lhcn$1;
.super Ljava/lang/Object;
.source "AndTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhcn;->a(Ljava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 301
    const-string/jumbo v0, ""

    .line 1038
    sput-object v0, Lhcn;->a:Ljava/lang/String;

    .line 302
    return-void
.end method
