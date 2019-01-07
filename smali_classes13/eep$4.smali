.class final Leep$4;
.super Ljava/lang/Object;
.source "OAExpandHeaderDelegate.java"

# interfaces
.implements Leer$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leep;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leep;


# direct methods
.method constructor <init>(Leep;)V
    .locals 0
    .param p1, "this$0"    # Leep;

    .prologue
    .line 305
    iput-object p1, p0, Leep$4;->a:Leep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 319
    iget-object v0, p0, Leep$4;->a:Leep;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leep;->a(Leep;Ljava/util/List;)V

    .line 320
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/oa/model/TeamStatModelObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "teamStatList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/oa/model/TeamStatModelObject;>;"
    iget-object v0, p0, Leep$4;->a:Leep;

    invoke-static {v0, p1}, Leep;->a(Leep;Ljava/util/List;)V

    .line 309
    return-void
.end method
