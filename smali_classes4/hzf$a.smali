.class final Lhzf$a;
.super Ljava/lang/Object;
.source "SoLoader.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lhzf;


# direct methods
.method public constructor <init>(Lhzf;Ljava/lang/String;)V
    .locals 1
    .param p2, "condition"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lhzf$a;->b:Lhzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const-string/jumbo v0, ""

    iput-object v0, p0, Lhzf$a;->a:Ljava/lang/String;

    .line 241
    iput-object p2, p0, Lhzf$a;->a:Ljava/lang/String;

    .line 242
    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "pathname"    # Ljava/io/File;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 247
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "filename":Ljava/lang/String;
    iget-object v1, p0, Lhzf$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
