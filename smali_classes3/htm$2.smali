.class final Lhtm$2;
.super Ljava/lang/Object;
.source "ReportBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhtm;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhtm;


# direct methods
.method constructor <init>(Lhtm;)V
    .locals 0
    .param p1, "this$0"    # Lhtm;

    .prologue
    .line 163
    iput-object p1, p0, Lhtm$2;->a:Lhtm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 163
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    .line 1167
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1168
    const/4 v0, -0x1

    .line 1170
    :goto_0
    return v0

    .line 1169
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1170
    const/4 v0, 0x0

    goto :goto_0

    .line 1172
    :cond_1
    const/4 v0, 0x1

    .line 163
    goto :goto_0
.end method
