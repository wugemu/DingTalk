.class final Lbrq$a;
.super Ljava/lang/Object;
.source "ButtonGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbrq;


# direct methods
.method private constructor <init>(Lbrq;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lbrq$a;->a:Lbrq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbrq;B)V
    .locals 0
    .param p1, "x0"    # Lbrq;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lbrq$a;-><init>(Lbrq;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 82
    .local v1, "tag":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 83
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "tag":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 84
    .local v0, "index":I
    iget-object v3, p0, Lbrq$a;->a:Lbrq;

    .line 1014
    iget-boolean v3, v3, Lbrq;->c:Z

    .line 84
    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    iget-object v3, p0, Lbrq$a;->a:Lbrq;

    .line 2014
    iget-object v3, v3, Lbrq;->b:Lbrq$b;

    .line 85
    if-eqz v3, :cond_1

    .line 86
    const/4 v2, 0x0

    .line 87
    .local v2, "value":Ljava/lang/Object;
    iget-object v3, p0, Lbrq$a;->a:Lbrq;

    .line 3014
    iget-object v3, v3, Lbrq;->e:[Ljava/lang/Object;

    .line 87
    if-eqz v3, :cond_0

    if-ltz v0, :cond_0

    iget-object v3, p0, Lbrq$a;->a:Lbrq;

    .line 4014
    iget-object v3, v3, Lbrq;->e:[Ljava/lang/Object;

    .line 87
    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 88
    iget-object v3, p0, Lbrq$a;->a:Lbrq;

    .line 5014
    iget-object v3, v3, Lbrq;->e:[Ljava/lang/Object;

    .line 88
    aget-object v2, v3, v0

    .line 90
    .end local v2    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lbrq$a;->a:Lbrq;

    .line 6014
    iget-object v3, v3, Lbrq;->b:Lbrq$b;

    .line 90
    iget-object v4, p0, Lbrq$a;->a:Lbrq;

    .line 7014
    iget-object v4, v4, Lbrq;->d:Ljava/lang/String;

    .line 90
    invoke-interface {v3, v4, v2}, Lbrq$b;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    :cond_1
    const/4 v0, -0x1

    .line 95
    :cond_2
    iget-object v3, p0, Lbrq$a;->a:Lbrq;

    .line 8014
    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lbrq;->a(IZ)V

    .line 97
    .end local v0    # "index":I
    :cond_3
    return-void
.end method
