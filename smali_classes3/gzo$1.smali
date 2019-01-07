.class final Lgzo$1;
.super Ljava/lang/Object;
.source "PhotoFeatureManager.java"

# interfaces
.implements Lgrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgzo;->b()Lgrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgzo;


# direct methods
.method constructor <init>(Lgzo;)V
    .locals 0
    .param p1, "this$0"    # Lgzo;

    .prologue
    .line 52
    iput-object p1, p0, Lgzo$1;->a:Lgzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mNavFrom"    # Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    .prologue
    .line 63
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "imagePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "mNavFrom"    # Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "imagePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    return-void
.end method

.method public final b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 66
    return-void
.end method
