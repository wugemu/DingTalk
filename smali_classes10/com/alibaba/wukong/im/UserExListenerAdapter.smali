.class public Lcom/alibaba/wukong/im/UserExListenerAdapter;
.super Ljava/lang/Object;
.source "UserExListenerAdapter.java"

# interfaces
.implements Lcom/alibaba/wukong/im/UserExListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenIdExChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/OpenIdExObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/OpenIdExObject;>;"
    return-void
.end method
