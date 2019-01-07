.class final Lahy$1;
.super Ljava/lang/Object;
.source "MailReleaseSpaceTask.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 165
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    .line 1168
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 1169
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 1170
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 1171
    const/4 v0, -0x1

    .line 1173
    :goto_0
    return v0

    .line 1172
    :cond_0
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1173
    const/4 v0, 0x1

    goto :goto_0

    .line 1175
    :cond_1
    const/4 v0, 0x0

    .line 165
    goto :goto_0
.end method
