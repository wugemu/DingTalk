.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Lflp$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->b(Ljava/util/List;Lcma;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lflp$b",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lflp;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lflp;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35;->c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35;->a:Lflp;

    iput-boolean p3, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1140
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35;->c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    new-instance v1, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35$1;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35;)V

    iget-boolean v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35;->b:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->a(Ljava/util/List;Lcma;Z)V

    .line 1157
    return-void
.end method
