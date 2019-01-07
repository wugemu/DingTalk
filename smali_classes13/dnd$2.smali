.class final Ldnd$2;
.super Ljava/lang/Object;
.source "MdInstantRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldnd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:J

.field final synthetic d:Lldd;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Ljava/util/Map;

.field final synthetic h:Ljava/util/Map;

.field final synthetic i:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

.field final synthetic j:Ldnd;


# direct methods
.method constructor <init>(Ldnd;JLcom/alibaba/wukong/im/Message;JLldd;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;)V
    .locals 0
    .param p1, "this$0"    # Ldnd;

    .prologue
    .line 137
    iput-object p1, p0, Ldnd$2;->j:Ldnd;

    iput-wide p2, p0, Ldnd$2;->a:J

    iput-object p4, p0, Ldnd$2;->b:Lcom/alibaba/wukong/im/Message;

    iput-wide p5, p0, Ldnd$2;->c:J

    iput-object p7, p0, Ldnd$2;->d:Lldd;

    iput-object p8, p0, Ldnd$2;->e:Ljava/lang/String;

    iput-boolean p9, p0, Ldnd$2;->f:Z

    iput-object p10, p0, Ldnd$2;->g:Ljava/util/Map;

    iput-object p11, p0, Ldnd$2;->h:Ljava/util/Map;

    iput-object p12, p0, Ldnd$2;->i:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    iget-object v0, p0, Ldnd$2;->j:Ldnd;

    iget-wide v1, p0, Ldnd$2;->a:J

    iget-object v3, p0, Ldnd$2;->b:Lcom/alibaba/wukong/im/Message;

    iget-wide v4, p0, Ldnd$2;->c:J

    iget-object v6, p0, Ldnd$2;->d:Lldd;

    iget-object v7, p0, Ldnd$2;->e:Ljava/lang/String;

    iget-boolean v8, p0, Ldnd$2;->f:Z

    iget-object v9, p0, Ldnd$2;->g:Ljava/util/Map;

    iget-object v10, p0, Ldnd$2;->h:Ljava/util/Map;

    iget-object v11, p0, Ldnd$2;->i:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    invoke-static/range {v0 .. v11}, Ldnd;->a(Ldnd;JLcom/alibaba/wukong/im/Message;JLldd;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;)V

    .line 141
    return-void
.end method
