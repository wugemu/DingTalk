.class final Lclw$1;
.super Ljava/lang/Object;
.source "ReLinker.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclw;->a(Landroid/content/Context;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lclw;


# direct methods
.method constructor <init>(Lclw;)V
    .locals 0
    .param p1, "this$0"    # Lclw;

    .prologue
    .line 120
    iput-object p1, p0, Lclw$1;->a:Lclw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lclw$1;->a:Lclw;

    .line 1045
    iget-object v0, v0, Lclw;->b:Ljava/lang/String;

    .line 123
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
