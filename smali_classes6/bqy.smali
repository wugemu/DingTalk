.class public abstract Lbqy;
.super Ljava/lang/Object;
.source "ToolDescriptor.java"


# instance fields
.field protected b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lbqy;->b:Ljava/util/HashMap;

    .line 20
    return-void
.end method

.method public abstract b()[Ljava/lang/String;
.end method

.method public abstract c()Lcom/alibaba/android/dingtalk/doc/toolbar/model/ToolbarIcon;
.end method

.method public abstract d()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;",
            ">;"
        }
    .end annotation
.end method

.method public final e()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lbqy;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method
