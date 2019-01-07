.class final Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;
.super Ljava/lang/Object;
.source "NotifierArrayList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;)V
    .locals 1

    .prologue
    .line 159
    .local p0, "this":Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;, "Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList<TE;>.a;"
    iput-object p1, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->a:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;

    .prologue
    .line 159
    .local p0, "this":Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;, "Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList<TE;>.a;"
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;-><init>(Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 169
    .local p0, "this":Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;, "Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList<TE;>.a;"
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->b:Z

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->b:Z

    .line 171
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, p0, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 178
    .local p0, "this":Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;, "Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList<TE;>.a;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->b:Z

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->a:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;

    invoke-static {v0}, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->access$100(Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;)Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->a:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;

    invoke-static {v0}, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->access$100(Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;)Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$b;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->a:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;

    invoke-static {v0}, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->access$200(Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;)Lelx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->a:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;

    invoke-static {v0}, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;->access$200(Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;)Lelx;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList$a;->a:Lcom/alibaba/android/rimet/tools/autoadapter/NotifierArrayList;

    invoke-virtual {v0, v1}, Lelx;->a(Ljava/util/List;)V

    .line 187
    :cond_1
    return-void
.end method
