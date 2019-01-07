.class final Lco$g;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Lco$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:I

.field final synthetic d:Lco;


# direct methods
.method constructor <init>(Lco;Ljava/lang/String;II)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "flags"    # I

    .prologue
    .line 3764
    iput-object p1, p0, Lco$g;->d:Lco;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3765
    const/4 v0, 0x0

    iput-object v0, p0, Lco$g;->a:Ljava/lang/String;

    .line 3766
    iput p3, p0, Lco$g;->b:I

    .line 3767
    iput p4, p0, Lco$g;->c:I

    .line 3768
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcf;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3773
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcf;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lco$g;->d:Lco;

    iget-object v0, v0, Lco;->o:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget v0, p0, Lco$g;->b:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lco$g;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3776
    iget-object v0, p0, Lco$g;->d:Lco;

    iget-object v0, v0, Lco;->o:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->peekChildFragmentManager()Lcn;

    move-result-object v6

    .line 3777
    .local v6, "childManager":Lcn;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcn;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3780
    const/4 v0, 0x0

    .line 3783
    .end local v6    # "childManager":Lcn;
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lco$g;->d:Lco;

    iget-object v3, p0, Lco$g;->a:Ljava/lang/String;

    iget v4, p0, Lco$g;->b:I

    iget v5, p0, Lco$g;->c:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lco;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method
