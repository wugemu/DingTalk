.class final Lapw$8$1;
.super Ljava/lang/Object;
.source "CalendarDataCenter.java"

# interfaces
.implements Lapv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapw$8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lapv",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lasl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lapw$8;


# direct methods
.method constructor <init>(Lapw$8;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lapw$8;

    .prologue
    .line 455
    iput-object p1, p0, Lapw$8$1;->b:Lapw$8;

    iput-object p2, p0, Lapw$8$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 455
    move-object v7, p1

    check-cast v7, Ljava/util/Map;

    .line 1458
    iget-object v0, p0, Lapw$8$1;->b:Lapw$8;

    iget-object v1, v0, Lapw$8;->d:Lapw;

    iget-object v0, p0, Lapw$8$1;->b:Lapw$8;

    iget-wide v2, v0, Lapw$8;->a:J

    iget-object v0, p0, Lapw$8$1;->b:Lapw$8;

    iget-wide v4, v0, Lapw$8;->b:J

    iget-object v6, p0, Lapw$8$1;->a:Ljava/util/List;

    iget-object v0, p0, Lapw$8$1;->b:Lapw$8;

    iget-object v8, v0, Lapw$8;->c:Lcom/alibaba/wukong/Callback;

    invoke-static/range {v1 .. v8}, Lapw;->a(Lapw;JJLjava/util/List;Ljava/util/Map;Lcom/alibaba/wukong/Callback;)V

    .line 455
    return-void
.end method
